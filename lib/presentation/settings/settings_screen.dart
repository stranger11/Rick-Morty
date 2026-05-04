import 'package:flutter/material.dart';
import 'package:morty_app/l10n/app_localizations.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.settings_outlined),
            const SizedBox(width: 8),
            Text(l10n.settingsTitle),
          ],
        ),
      ),
      body: const SizedBox.expand(),
    );
  }
}
