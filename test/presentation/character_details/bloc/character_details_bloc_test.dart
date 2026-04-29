import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:morty_app/domain/entities/character_details.dart';
import 'package:morty_app/domain/entities/characters_page.dart';
import 'package:morty_app/domain/repositories/character_repository.dart';
import 'package:morty_app/l10n/error_keys.dart';
import 'package:morty_app/presentation/character_details/bloc/character_details_bloc.dart';

class _MockCharacterRepository extends Mock implements CharacterRepository {}

void main() {
  late CharacterRepository repository;

  const details = CharacterDetails(
    id: 1,
    name: 'Rick Sanchez',
    status: 'Alive',
    species: 'Human',
    gender: 'Male',
    origin: 'Earth',
    location: 'Citadel of Ricks',
    imageUrl: 'image',
  );

  setUp(() {
    repository = _MockCharacterRepository();
    when(
      () => repository.fetchCharacters(page: any(named: 'page')),
    ).thenAnswer((_) async => const CharactersPage(results: [], nextPage: null));
  });

  blocTest<CharacterDetailsBloc, CharacterDetailsState>(
    'emits loading then details on init success',
    build: () {
      when(
        () => repository.fetchCharacterDetails(1),
      ).thenAnswer((_) async => details);
      return CharacterDetailsBloc(repository);
    },
    act: (bloc) => bloc.add(CharacterDetailsEvent.init(1)),
    expect: () => [
      CharacterDetailsState(isLoading: true),
      CharacterDetailsState(
        isLoading: false,
        details: details,
      ),
    ],
  );

  blocTest<CharacterDetailsBloc, CharacterDetailsState>(
    'emits loading then failure on init error',
    build: () {
      when(
        () => repository.fetchCharacterDetails(1),
      ).thenThrow(Exception('network'));
      return CharacterDetailsBloc(repository);
    },
    act: (bloc) => bloc.add(CharacterDetailsEvent.init(1)),
    expect: () => [
      CharacterDetailsState(isLoading: true),
      CharacterDetailsState(
        isLoading: false,
        errorKey: ErrorKeys.failedToLoadCharacterDetails,
      ),
    ],
  );
}
