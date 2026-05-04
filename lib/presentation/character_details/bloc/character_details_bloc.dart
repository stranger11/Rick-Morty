import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:morty_app/core/bloc/base_bloc.dart';
import 'package:morty_app/core/bloc/base_bloc_state.dart';
import 'package:morty_app/core/bloc/bloc_action.dart';
import 'package:morty_app/domain/entities/character_details.dart';
import 'package:morty_app/domain/repositories/character_repository.dart';
import 'package:morty_app/l10n/error_keys.dart';

part 'character_details_bloc.freezed.dart';
part 'character_details_event.dart';
part 'character_details_state.dart';

@injectable
class CharacterDetailsBloc
    extends BaseBloc<CharacterDetailsEvent, CharacterDetailsState> {
  CharacterDetailsBloc(this._repository) : super(CharacterDetailsState()) {
    on<CharacterDetailsInit>(_onInit);
  }

  final CharacterRepository _repository;

  FutureOr<void> _onInit(
    CharacterDetailsInit event,
    Emitter<CharacterDetailsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorKey: null, action: null));
    try {
      final details = await _repository.fetchCharacterDetails(event.characterId);
      emit(
        state.copyWith(
          isLoading: false,
          details: details,
          errorKey: null,
          action: null,
        ),
      );
    } catch (_) {
      emit(
        state.copyWith(
          isLoading: false,
          errorKey: ErrorKeys.failedToLoadCharacterDetails,
          action: null,
        ),
      );
    }
  }
}
