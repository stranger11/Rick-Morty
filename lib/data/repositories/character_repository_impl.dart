import 'package:injectable/injectable.dart';
import 'package:morty_app/data/remote/rick_morty_api_service.dart';
import 'package:morty_app/domain/entities/character_details.dart';
import 'package:morty_app/domain/entities/characters_page.dart';
import 'package:morty_app/domain/repositories/character_repository.dart';

@LazySingleton(as: CharacterRepository)
class CharacterRepositoryImpl implements CharacterRepository {
  CharacterRepositoryImpl(this._apiService);

  final RickMortyApiService _apiService;

  @override
  Future<CharactersPage> fetchCharacters({int page = 1}) async {
    final response = await _apiService.fetchCharacters(page: page);
    return CharactersPage(
      results: response.data.results,
      nextPage: response.data.nextPage,
    );
  }

  @override
  Future<CharacterDetails> fetchCharacterDetails(int characterId) async {
    final response = await _apiService.fetchCharacterDetails(characterId: characterId);
    return response.data;
  }
}
