import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:morty_app/data/remote/rick_morty_api_service.dart';
import 'package:morty_app/data/repositories/character_repository_impl.dart';
import 'package:morty_app/domain/repositories/character_repository.dart';
import 'package:morty_app/presentation/character_details/bloc/character_details_bloc.dart';
import 'package:morty_app/presentation/characters/bloc/characters_bloc.dart';

class Locator {
  static final GetIt injection = GetIt.instance;

  static Future<void> init() async {
    if (injection.isRegistered<Dio>()) {
      return;
    }
    injection.registerLazySingleton<Dio>(
      () => Dio(
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
        ),
    );
    injection.registerLazySingleton<RickMortyApiService>(
      () => RickMortyApiService(injection<Dio>()),
    );
    injection.registerLazySingleton<CharacterRepository>(
      () => CharacterRepositoryImpl(injection<RickMortyApiService>()),
    );
    injection.registerFactory<CharactersBloc>(
      () => CharactersBloc(injection<CharacterRepository>()),
    );
    injection.registerFactory<CharacterDetailsBloc>(
      () => CharacterDetailsBloc(injection<CharacterRepository>()),
    );
  }
}
