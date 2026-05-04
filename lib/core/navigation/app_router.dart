import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:morty_app/core/ui/widgets/scaffold_with_tabs.dart';
import 'package:morty_app/di/injection.dart';
import 'package:morty_app/presentation/character_details/bloc/character_details_bloc.dart';
import 'package:morty_app/presentation/character_details/character_details_screen.dart';
import 'package:morty_app/presentation/characters/characters_screen.dart';
import 'package:morty_app/presentation/explore/explore_home_screen.dart';
import 'package:morty_app/presentation/explore/explore_next_screen.dart';
import 'package:morty_app/presentation/settings/settings_screen.dart';

final class AppRouteNames {
  static const characters = 'characters';
  static const characterDetails = 'characterDetails';
  static const explore = 'explore';
  static const exploreNext = 'exploreNext';
  static const settings = 'settings';
}

final class AppRoutePaths {
  static const characters = '/characters';
  static const characterDetails = '/characters/:id';
  static const explore = '/explore';
  static const exploreNext = '/explore/next';
  static const settings = '/settings';
}

final class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutePaths.characters,
    redirect: (context, state) {
      if (state.uri.path == '/') {
        return AppRoutePaths.characters;
      }
      return null;
    },
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ScaffoldWithTabs(shell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutePaths.characters,
                name: AppRouteNames.characters,
                pageBuilder: (context, state) => NoTransitionPage<void>(
                  key: state.pageKey,
                  child: const CharactersScreen(),
                ),
                routes: [
                  GoRoute(
                    path: ':id',
                    name: AppRouteNames.characterDetails,
                    builder: (context, state) {
                      final idRaw = state.pathParameters['id'];
                      final characterId = int.tryParse(idRaw ?? '');
                      if (characterId == null) {
                        return const CharactersScreen();
                      }
                      return BlocProvider<CharacterDetailsBloc>(
                        create: (_) =>
                            Locator.injection<CharacterDetailsBloc>()
                              ..add(CharacterDetailsEvent.init(characterId)),
                        child: const CharacterDetailsScreen(),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutePaths.explore,
                name: AppRouteNames.explore,
                pageBuilder: (context, state) => NoTransitionPage<void>(
                  key: state.pageKey,
                  child: const ExploreHomeScreen(),
                ),
                routes: [
                  GoRoute(
                    path: 'next',
                    name: AppRouteNames.exploreNext,
                    builder: (context, state) => const ExploreNextScreen(),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutePaths.settings,
                name: AppRouteNames.settings,
                pageBuilder: (context, state) => NoTransitionPage<void>(
                  key: state.pageKey,
                  child: const SettingsScreen(),
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
