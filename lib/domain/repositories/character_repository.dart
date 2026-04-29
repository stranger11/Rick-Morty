import 'package:morty_app/domain/entities/character_details.dart';
import 'package:morty_app/domain/entities/characters_page.dart';

abstract class CharacterRepository {
  Future<CharactersPage> fetchCharacters({int page = 1});
  Future<CharacterDetails> fetchCharacterDetails(int characterId);
}
