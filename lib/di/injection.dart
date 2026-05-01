import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> configureDependencies() async => getIt.init();

class Locator {
  static GetIt get injection => getIt;

  static Future<void> init() async {
    if (injection.isRegistered<Dio>()) {
      return;
    }
    await configureDependencies();
  }
}
