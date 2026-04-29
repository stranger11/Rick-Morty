part of 'character_details_bloc.dart';

@freezed
abstract class CharacterDetailsState extends BaseBlocState
    with _$CharacterDetailsState {
  const CharacterDetailsState._();

  factory CharacterDetailsState({
    @Default(false) bool isLoading,
    CharacterDetails? details,
    String? errorKey,
    BlocAction? action,
  }) = _CharacterDetailsState;
}
