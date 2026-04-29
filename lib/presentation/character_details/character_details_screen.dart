import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:morty_app/l10n/app_localizations.dart';
import 'package:morty_app/l10n/error_keys.dart';
import 'package:morty_app/presentation/character_details/bloc/character_details_bloc.dart';

class CharacterDetailsScreen extends StatelessWidget {
  const CharacterDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.characterDetailsTitle)),
      body: BlocBuilder<CharacterDetailsBloc, CharacterDetailsState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.errorKey != null) {
            return Center(
              child: Text(
                state.errorKey == ErrorKeys.failedToLoadCharacterDetails
                    ? l10n.failedToLoadCharacterDetails
                    : l10n.unknownError,
              ),
            );
          }
          final details = state.details;
          if (details == null) {
            return Center(child: Text(l10n.noData));
          }
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      details.imageUrl,
                      height: 220,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        height: 220,
                        width: 220,
                        color: Colors.grey.shade300,
                        alignment: Alignment.center,
                        child: const Icon(Icons.person, size: 56),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(details.name, style: Theme.of(context).textTheme.headlineSmall),
                const SizedBox(height: 12),
                Text(l10n.statusLabel(details.status)),
                Text(l10n.speciesLabel(details.species)),
                Text(l10n.genderLabel(details.gender)),
                Text(l10n.originLabel(details.origin)),
                Text(l10n.locationLabel(details.location)),
              ],
            ),
          );
        },
      ),
    );
  }
}
