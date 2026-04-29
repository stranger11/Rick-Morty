import 'package:dio/dio.dart' hide Headers;
import 'package:morty_app/data/models/character_details_model.dart';
import 'package:morty_app/data/models/character_list_response_model.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'rick_morty_api_service.g.dart';

@RestApi()
abstract class RickMortyApiService {
  factory RickMortyApiService(Dio dio, {String baseUrl}) = _RickMortyApiService;

  @GET('/character')
  Future<HttpResponse<CharacterListResponseModel>> fetchCharacters({
    @Query('page') required int page,
  });

  @GET('/character/{id}')
  Future<HttpResponse<CharacterDetailsModel>> fetchCharacterDetails({
    @Path('id') required int characterId,
  });
}
