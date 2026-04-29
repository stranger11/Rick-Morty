// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Morty App';

  @override
  String get charactersTitle => 'Рик и Морти';

  @override
  String get retry => 'Повторить';

  @override
  String get unknownError => 'Неизвестная ошибка';

  @override
  String get failedToLoadCharacters => 'Не удалось загрузить персонажей';

  @override
  String get failedToLoadMoreCharacters => 'Не удалось догрузить персонажей';

  @override
  String rateLimitRepeatInSeconds(int seconds) {
    return 'Лимит запросов. Повторите через $seconds сек.';
  }

  @override
  String get characterDetailsTitle => 'Детали персонажа';

  @override
  String get noData => 'Нет данных';

  @override
  String statusLabel(String value) {
    return 'Статус: $value';
  }

  @override
  String speciesLabel(String value) {
    return 'Вид: $value';
  }

  @override
  String genderLabel(String value) {
    return 'Пол: $value';
  }

  @override
  String originLabel(String value) {
    return 'Происхождение: $value';
  }

  @override
  String locationLabel(String value) {
    return 'Локация: $value';
  }

  @override
  String get failedToLoadCharacterDetails =>
      'Не удалось загрузить детали персонажа';
}
