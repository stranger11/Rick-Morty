import 'package:morty_app/domain/entities/character_details.dart';

class CharacterDetailsModel extends CharacterDetails {
  const CharacterDetailsModel({
    required super.id,
    required super.name,
    required super.status,
    required super.species,
    required super.gender,
    required super.origin,
    required super.location,
    required super.imageUrl,
  });

  factory CharacterDetailsModel.fromJson(Map<String, dynamic> json) {
    final origin = json['origin'] as Map<String, dynamic>? ?? {};
    final location = json['location'] as Map<String, dynamic>? ?? {};
    return CharacterDetailsModel(
      id: json['id'] as int,
      name: json['name'] as String? ?? '',
      status: json['status'] as String? ?? '',
      species: json['species'] as String? ?? '',
      gender: json['gender'] as String? ?? '',
      origin: origin['name'] as String? ?? '',
      location: location['name'] as String? ?? '',
      imageUrl: json['image'] as String? ?? '',
    );
  }
}
