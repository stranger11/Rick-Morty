part of 'characters_bloc.dart';

@freezed
class CharactersEvent with _$CharactersEvent {
  factory CharactersEvent.init() = CharactersInit;
  factory CharactersEvent.loadMore() = CharactersLoadMore;

  /// Навигация на детали — в стейт кладётся [NavigateAction.navigateToCharacterDetails].
  factory CharactersEvent.openCharacterDetails(int characterId) =
      OpenCharacterDetails;

  /// Навигация в настройки — в стейт кладётся [NavigateAction.navigateToSettings].
  factory CharactersEvent.openSettings() = OpenSettings;
}
