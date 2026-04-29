import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/rendering.dart';
import 'package:morty_app/core/ui/widgets/base_bloc_listener.dart';
import 'package:morty_app/core/ui/widgets/base_bloc_state_widget.dart';
import 'package:morty_app/l10n/app_localizations.dart';
import 'package:morty_app/l10n/error_keys.dart';
import 'package:morty_app/presentation/characters/bloc/characters_bloc.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState
    extends
        BaseBlocStateWidget<
          CharactersScreen,
          CharactersBloc,
          CharactersEvent
        > {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_onScroll);
  }

  void _onScroll() {
    if (!_scrollController.hasClients) {
      return;
    }
    final blocState = getBloc().state;
    if (blocState.isLoading || blocState.isPageLoading) {
      return;
    }
    if ((_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent - 20) &&
        (_scrollController.position.userScrollDirection ==
            ScrollDirection.reverse)) {
      sendEvent(CharactersEvent.loadMore());
    }
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return BaseBlocListener<CharactersBloc, CharactersState>(
      listener: (context, state, action) async {},
      child: Scaffold(
        appBar: AppBar(title: Text(l10n.charactersTitle)),
        body: BlocBuilder<CharactersBloc, CharactersState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state.errorKey != null) {
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(_resolveErrorText(state, l10n)),
                    const SizedBox(height: 12),
                    FilledButton(
                      onPressed: () {
                        sendEvent(CharactersEvent.init());
                      },
                      child: Text(l10n.retry),
                    ),
                  ],
                ),
              );
            }

            return ListView.separated(
              controller: _scrollController,
              itemCount:
                  state.characters.length +
                  (state.isPageLoading ? 1 : 0),
              separatorBuilder: (context, index) =>
                  const Divider(height: 1),
              itemBuilder: (context, index) {
                if (index >= state.characters.length) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }
                final character = state.characters[index];
                return ListTile(
                  onTap: () {
                    sendEvent(
                      CharactersEvent.openCharacterDetails(
                        character.id,
                      ),
                    );
                  },
                  leading: ClipOval(
                    child: Image.network(
                      character.imageUrl,
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                          Container(
                            width: 40,
                            height: 40,
                            color: Colors.grey.shade300,
                            child: const Icon(Icons.person, size: 20),
                          ),
                    ),
                  ),
                  title: Text(character.name),
                  subtitle: Text(
                    '${character.status} - ${character.species}',
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  String _resolveErrorText(
    CharactersState state,
    AppLocalizations l10n,
  ) {
    switch (state.errorKey) {
      case ErrorKeys.failedToLoadCharacters:
        return l10n.failedToLoadCharacters;
      case ErrorKeys.failedToLoadMoreCharacters:
        return l10n.failedToLoadMoreCharacters;
      case ErrorKeys.rateLimit:
        return l10n.rateLimitRepeatInSeconds(
          state.retryAfterSeconds ?? 2,
        );
      default:
        return l10n.unknownError;
    }
  }
}
