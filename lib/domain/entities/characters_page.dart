import 'package:equatable/equatable.dart';
import 'package:morty_app/domain/entities/character.dart';

class CharactersPage extends Equatable {
  const CharactersPage({
    required this.results,
    required this.nextPage,
  });

  final List<Character> results;
  final int? nextPage;

  @override
  List<Object?> get props => [results, nextPage];
}
