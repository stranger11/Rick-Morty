import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:morty_app/core/bloc/base_bloc.dart';
import 'package:morty_app/core/bloc/base_bloc_state.dart';
import 'package:morty_app/core/bloc/bloc_action.dart';
import 'package:morty_app/core/navigation/navigate_action.dart';
import 'package:morty_app/core/navigation/navigation_type.dart';
import 'package:morty_app/l10n/error_keys.dart';
import 'package:morty_app/domain/entities/character.dart';
import 'package:morty_app/domain/repositories/character_repository.dart';
import 'package:stream_transform/stream_transform.dart';

part 'characters_bloc.freezed.dart';
part 'characters_event.dart';
part 'characters_state.dart';

@injectable
class CharactersBloc extends BaseBloc<CharactersEvent, CharactersState> {
  CharactersBloc(this._repository) : super(CharactersState()) {
    on<CharactersInit>(_onInit);
    on<CharactersLoadMore>(
      _onLoadMore,
      transformer: throttleDroppable(const Duration(seconds: 1)),
    );
    on<OpenCharacterDetails>(_onOpenCharacterDetails);
    on<OpenSettings>(_onOpenSettings);
  }

  final CharacterRepository _repository;
  DateTime? _rateLimitedUntil;

  FutureOr<void> _onInit(
    CharactersInit event,
    Emitter<CharactersState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        isPageLoading: false,
        errorKey: null,
        retryAfterSeconds: null,
        page: 1,
        prevLength: 0,
        currentLength: 0,
      ),
    );
    try {
      final page = await _repository.fetchCharacters(page: 1);
      emit(
        state.copyWith(
          isLoading: false,
          characters: page.results,
          page: 1,
          prevLength: 0,
          currentLength: page.results.length,
          errorKey: null,
          retryAfterSeconds: null,
        ),
      );
    } catch (_) {
      emit(
        state.copyWith(
          isLoading: false,
          errorKey: ErrorKeys.failedToLoadCharacters,
          retryAfterSeconds: null,
        ),
      );
    }
  }

  FutureOr<void> _onLoadMore(
    CharactersLoadMore event,
    Emitter<CharactersState> emit,
  ) async {
    if (_rateLimitedUntil != null &&
        DateTime.now().isBefore(_rateLimitedUntil!)) {
      return;
    }
    if (state.isLoading || state.isPageLoading) {
      return;
    }
    if (state.prevLength == state.currentLength) {
      return;
    }
    emit(state.copyWith(isPageLoading: true, errorKey: null));
    try {
      final targetPage = state.page + 1;
      final page = await _repository.fetchCharacters(page: targetPage);
      final totalCharacters = [...state.characters, ...page.results];
      emit(
        state.copyWith(
          isPageLoading: false,
          page: targetPage,
          prevLength: state.currentLength,
          currentLength: totalCharacters.length,
          characters: totalCharacters,
          errorKey: null,
          retryAfterSeconds: null,
        ),
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 429) {
        final retryAfterHeader =
            e.response?.headers.value('retry-after');
        final retryAfterSeconds = int.tryParse(retryAfterHeader ?? '') ?? 2;
        _rateLimitedUntil =
            DateTime.now().add(Duration(seconds: retryAfterSeconds));
        emit(
          state.copyWith(
            isPageLoading: false,
            errorKey: ErrorKeys.rateLimit,
            retryAfterSeconds: retryAfterSeconds,
          ),
        );
        return;
      }
      emit(
        state.copyWith(
          isPageLoading: false,
          errorKey: ErrorKeys.failedToLoadMoreCharacters,
          retryAfterSeconds: null,
        ),
      );
    } catch (_) {
      emit(
        state.copyWith(
          isPageLoading: false,
          errorKey: ErrorKeys.failedToLoadMoreCharacters,
          retryAfterSeconds: null,
        ),
      );
    }
  }

  FutureOr<void> _onOpenCharacterDetails(
    OpenCharacterDetails event,
    Emitter<CharactersState> emit,
  ) {
    emit(state.copyWith(action: null));
    emit(
      state.copyWith(
        action: NavigateAction.navigateToCharacterDetails(
          NavigateType.push,
          event.characterId,
        ),
      ),
    );
  }

  FutureOr<void> _onOpenSettings(
    OpenSettings event,
    Emitter<CharactersState> emit,
  ) {
    emit(state.copyWith(action: null));
    emit(state.copyWith(action: NavigateAction.navigateToSettings()));
  }

  EventTransformer<E> throttleDroppable<E>(Duration duration) {
    return (events, mapper) =>
        droppable<E>().call(events.throttle(duration), mapper);
  }
}
