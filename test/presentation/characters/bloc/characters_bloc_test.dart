import 'package:bloc_test/bloc_test.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:morty_app/domain/entities/character.dart';
import 'package:morty_app/domain/entities/characters_page.dart';
import 'package:morty_app/domain/repositories/character_repository.dart';
import 'package:morty_app/l10n/error_keys.dart';
import 'package:morty_app/presentation/characters/bloc/characters_bloc.dart';

class _MockCharacterRepository extends Mock implements CharacterRepository {}

void main() {
  late CharacterRepository repository;

  const firstPageCharacters = [
    Character(
      id: 1,
      name: 'Rick Sanchez',
      status: 'Alive',
      species: 'Human',
      imageUrl: 'image-1',
    ),
  ];
  const secondPageCharacters = [
    Character(
      id: 2,
      name: 'Morty Smith',
      status: 'Alive',
      species: 'Human',
      imageUrl: 'image-2',
    ),
  ];

  setUp(() {
    repository = _MockCharacterRepository();
  });

  blocTest<CharactersBloc, CharactersState>(
    'emits loading then first page on init success',
    build: () {
      when(
        () => repository.fetchCharacters(page: 1),
      ).thenAnswer(
        (_) async => const CharactersPage(results: firstPageCharacters, nextPage: 2),
      );
      return CharactersBloc(repository);
    },
    act: (bloc) => bloc.add(CharactersEvent.init()),
    expect: () => [
      CharactersState(
        isLoading: true,
        isPageLoading: false,
        page: 1,
        prevLength: 0,
        currentLength: 0,
      ),
      CharactersState(
        isLoading: false,
        characters: firstPageCharacters,
        page: 1,
        prevLength: 0,
        currentLength: firstPageCharacters.length,
      ),
    ],
  );

  blocTest<CharactersBloc, CharactersState>(
    'appends new data on loadMore',
    build: () {
      when(
        () => repository.fetchCharacters(page: 1),
      ).thenAnswer(
        (_) async => const CharactersPage(results: firstPageCharacters, nextPage: 2),
      );
      when(
        () => repository.fetchCharacters(page: 2),
      ).thenAnswer(
        (_) async => const CharactersPage(results: secondPageCharacters, nextPage: 3),
      );
      return CharactersBloc(repository);
    },
    act: (bloc) async {
      bloc.add(CharactersEvent.init());
      await Future<void>.delayed(const Duration(milliseconds: 10));
      bloc.add(CharactersEvent.loadMore());
    },
    expect: () => [
      CharactersState(
        isLoading: true,
        isPageLoading: false,
        page: 1,
        prevLength: 0,
        currentLength: 0,
      ),
      CharactersState(
        isLoading: false,
        characters: firstPageCharacters,
        page: 1,
        prevLength: 0,
        currentLength: firstPageCharacters.length,
      ),
      CharactersState(
        isLoading: false,
        isPageLoading: true,
        page: 1,
        prevLength: 0,
        currentLength: firstPageCharacters.length,
        characters: firstPageCharacters,
      ),
      CharactersState(
        isLoading: false,
        isPageLoading: false,
        page: 2,
        prevLength: firstPageCharacters.length,
        currentLength: firstPageCharacters.length + secondPageCharacters.length,
        characters: [...firstPageCharacters, ...secondPageCharacters],
      ),
    ],
  );

  blocTest<CharactersBloc, CharactersState>(
    'emits user-friendly rate limit message on 429',
    build: () {
      when(
        () => repository.fetchCharacters(page: 1),
      ).thenAnswer(
        (_) async => const CharactersPage(results: firstPageCharacters, nextPage: 2),
      );
      final requestOptions = RequestOptions(path: '/character');
      final response = Response<dynamic>(
        requestOptions: requestOptions,
        statusCode: 429,
        headers: Headers.fromMap({'retry-after': ['2']}),
      );
      when(
        () => repository.fetchCharacters(page: 2),
      ).thenThrow(
        DioException(
          requestOptions: requestOptions,
          response: response,
          type: DioExceptionType.badResponse,
        ),
      );
      return CharactersBloc(repository);
    },
    act: (bloc) async {
      bloc.add(CharactersEvent.init());
      await Future<void>.delayed(const Duration(milliseconds: 10));
      bloc.add(CharactersEvent.loadMore());
    },
    expect: () => [
      CharactersState(
        isLoading: true,
        isPageLoading: false,
        page: 1,
        prevLength: 0,
        currentLength: 0,
      ),
      CharactersState(
        isLoading: false,
        characters: firstPageCharacters,
        page: 1,
        prevLength: 0,
        currentLength: firstPageCharacters.length,
      ),
      CharactersState(
        isLoading: false,
        isPageLoading: true,
        page: 1,
        prevLength: 0,
        currentLength: firstPageCharacters.length,
        characters: firstPageCharacters,
      ),
      CharactersState(
        isLoading: false,
        isPageLoading: false,
        page: 1,
        prevLength: 0,
        currentLength: firstPageCharacters.length,
        characters: firstPageCharacters,
        errorKey: ErrorKeys.rateLimit,
        retryAfterSeconds: 2,
      ),
    ],
  );
}
