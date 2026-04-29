import 'package:morty_app/data/models/character_model.dart';

class CharacterListResponseModel {
  CharacterListResponseModel({
    required this.results,
    required this.nextPage,
  });

  final List<CharacterModel> results;
  final int? nextPage;

  factory CharacterListResponseModel.fromJson(Map<String, dynamic> json) {
    final rawResults = json['results'] as List<dynamic>? ?? [];
    final info = json['info'] as Map<String, dynamic>? ?? {};
    final next = info['next'] as String?;
    int? nextPage;
    if (next != null) {
      nextPage = int.tryParse(Uri.parse(next).queryParameters['page'] ?? '');
    }
    return CharacterListResponseModel(
      results: rawResults
          .map((item) => CharacterModel.fromJson(item as Map<String, dynamic>))
          .toList(),
      nextPage: nextPage,
    );
  }

  Map<String, dynamic> toJson() => {
        'results': results,
        'info': {
          'next': nextPage == null ? null : '?page=$nextPage',
        },
      };
}
