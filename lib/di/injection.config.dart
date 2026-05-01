// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../data/remote/rick_morty_api_service.dart' as _i90;
import '../data/repositories/character_repository_impl.dart' as _i286;
import '../domain/repositories/character_repository.dart' as _i357;
import '../presentation/character_details/bloc/character_details_bloc.dart'
    as _i942;
import '../presentation/characters/bloc/characters_bloc.dart' as _i18;
import 'register_module.dart' as _i291;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i90.RickMortyApiService>(
      () => registerModule.apiService(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i357.CharacterRepository>(
      () => _i286.CharacterRepositoryImpl(gh<_i90.RickMortyApiService>()),
    );
    gh.factory<_i942.CharacterDetailsBloc>(
      () => _i942.CharacterDetailsBloc(gh<_i357.CharacterRepository>()),
    );
    gh.factory<_i18.CharactersBloc>(
      () => _i18.CharactersBloc(gh<_i357.CharacterRepository>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i291.RegisterModule {}
