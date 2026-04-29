part of 'characters_bloc.dart';

@freezed
abstract class CharactersState extends BaseBlocState with _$CharactersState {
  const CharactersState._();

  factory CharactersState({
    @Default(false) bool isLoading,
    @Default(false) bool isPageLoading,
    @Default(1) int page,
    @Default(20) int size,
    @Default(0) int prevLength,
    @Default(0) int currentLength,
    @Default(<Character>[]) List<Character> characters,
    String? errorKey,
    int? retryAfterSeconds,
    BlocAction? action,
  }) = _CharactersState;
}
