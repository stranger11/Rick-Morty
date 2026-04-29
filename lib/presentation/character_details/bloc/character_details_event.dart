part of 'character_details_bloc.dart';

@freezed
abstract class CharacterDetailsEvent with _$CharacterDetailsEvent {
  factory CharacterDetailsEvent.init(int characterId) = CharacterDetailsInit;
}
