# Morty App

A Flutter application that uses the free [Rick and Morty API](https://rickandmortyapi.com/) to display characters, open character details, and load more data with pagination.

## Features

- Character list screen
- Infinite scroll pagination
- Character details screen
- Layered architecture (`data` / `domain` / `presentation`)
- `BLoC` state management
- `get_it` dependency injection
- `retrofit` + `dio` for networking
- Flutter localization (`gen-l10n`, English + Russian)
- Unit tests for core BLoC logic

## Tech Stack

- Flutter
- flutter_bloc
- dio
- retrofit / retrofit_generator
- freezed / build_runner
- get_it
- intl + flutter gen-l10n
- bloc_test + mocktail

## Project Structure

```text
lib/
  core/                 # Base bloc classes, navigation, shared widgets
  data/                 # API service, models, repository implementations
  di/                   # Dependency injection setup
  domain/               # Entities and repository contracts
  l10n/                 # ARB localization files and generated localization code
  presentation/         # Screens and feature BLoCs
  main.dart             # App entry point
```

## Localization

This project uses standard Flutter localization:

- ARB files:
  - `lib/l10n/app_en.arb`
  - `lib/l10n/app_ru.arb`
- Config:
  - `l10n.yaml`
- Generated localization class:
  - `lib/l10n/app_localizations.dart`

To regenerate localization files:

```bash
flutter gen-l10n
```

## How to Run

1. Install dependencies:

```bash
flutter pub get
```

2. (Optional) Regenerate code if you changed freezed/retrofit models:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

3. Run the app:

```bash
flutter run
```

## Testing

Run static analysis:

```bash
flutter analyze
```

Run tests:

```bash
flutter test
```

Current tests include:

- `CharactersBloc` basic flow:
  - initial load success
  - pagination append
- `CharacterDetailsBloc`:
  - details success
  - details failure

## Notes

- Pagination is implemented using scroll-triggered `loadMore` events and throttled event handling in BLoC.
