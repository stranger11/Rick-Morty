import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:morty_app/core/ui/widgets/base_bloc_listener.dart';
import 'package:morty_app/l10n/app_localizations.dart';
import 'package:morty_app/presentation/explore/bloc/explore_bloc.dart';
import 'package:morty_app/presentation/explore/bloc/explore_event.dart';
import 'package:morty_app/presentation/explore/bloc/explore_state.dart';

class ExploreHomeScreen extends StatelessWidget {
  const ExploreHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return BaseBlocListener<ExploreBloc, ExploreState>(
      listener: (context, state, action) async {},
      child: Scaffold(
        appBar: AppBar(title: Text(l10n.exploreTitle)),
        body: Center(
          child: FilledButton.icon(
            icon: const Icon(Icons.arrow_forward),
            label: Text(l10n.exploreOpenNextCta),
            onPressed: () => context.read<ExploreBloc>().add(ExploreOpenNext()),
          ),
        ),
      ),
    );
  }
}
