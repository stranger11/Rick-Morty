part of 'characters_bloc.dart';

@freezed
class CharactersEvent with _$CharactersEvent {
  factory CharactersEvent.init() = CharactersInit;
  factory CharactersEvent.loadMore() = CharactersLoadMore;
  factory CharactersEvent.openCharacterDetails(int characterId) =
      OpenCharacterDetails;
}
