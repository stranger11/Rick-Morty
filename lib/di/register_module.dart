import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:morty_app/data/remote/rick_morty_api_service.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Dio get dio => Dio(
    BaseOptions(baseUrl: 'https://rickandmortyapi.com/api'),
  )..interceptors.add(
      LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: false,
        responseBody: true,
        error: true,
      ),
    );

  @lazySingleton
  RickMortyApiService apiService(Dio dio) => RickMortyApiService(dio);
}
