import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:morty_app/l10n/app_localizations.dart';

class ScaffoldWithTabs extends StatelessWidget {
  const ScaffoldWithTabs({super.key, required this.shell});

  final StatefulNavigationShell shell;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: SizedBox.expand(child: shell),
      bottomNavigationBar: Material(
        elevation: 8,
        color: scheme.surfaceContainerHighest,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: scheme.surfaceContainerHighest,
          selectedItemColor: scheme.primary,
          unselectedItemColor: scheme.onSurfaceVariant,
          currentIndex: shell.currentIndex,
          onTap: (index) => shell.goBranch(
            index,
            initialLocation: index == shell.currentIndex,
          ),
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.people_outline),
              activeIcon: const Icon(Icons.people),
              label: l10n.tabCharactersLabel,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.explore_outlined),
              activeIcon: const Icon(Icons.explore),
              label: l10n.exploreTitle,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings_outlined),
              activeIcon: const Icon(Icons.settings),
              label: l10n.settingsTitle,
            ),
          ],
        ),
      ),
    );
  }
}
