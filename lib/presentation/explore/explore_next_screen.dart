import 'package:flutter/material.dart';
import 'package:morty_app/l10n/app_localizations.dart';

class ExploreNextScreen extends StatelessWidget {
  const ExploreNextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.exploreNextTitle)),
      body: Center(child: Text(l10n.exploreNextBody)),
    );
  }
}
