// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Morty App';

  @override
  String get charactersTitle => 'Rick and Morty';

  @override
  String get retry => 'Retry';

  @override
  String get unknownError => 'Unknown error';

  @override
  String get failedToLoadCharacters => 'Failed to load characters';

  @override
  String get failedToLoadMoreCharacters => 'Failed to load more characters';

  @override
  String rateLimitRepeatInSeconds(int seconds) {
    return 'Rate limit. Repeat in $seconds sec.';
  }

  @override
  String get characterDetailsTitle => 'Character details';

  @override
  String get noData => 'No data';

  @override
  String statusLabel(String value) {
    return 'Status: $value';
  }

  @override
  String speciesLabel(String value) {
    return 'Species: $value';
  }

  @override
  String genderLabel(String value) {
    return 'Gender: $value';
  }

  @override
  String originLabel(String value) {
    return 'Origin: $value';
  }

  @override
  String locationLabel(String value) {
    return 'Location: $value';
  }

  @override
  String get failedToLoadCharacterDetails => 'Failed to load character details';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get tabCharactersLabel => 'Characters';

  @override
  String get exploreTitle => 'Explore';

  @override
  String get exploreOpenNextCta => 'Next screen (this tab stack)';

  @override
  String get exploreNextTitle => 'Explore details';

  @override
  String get exploreNextBody =>
      'Pushed on top of this tab only. Back pops here.';
}
