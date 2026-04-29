import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:morty_app/di/injection.dart';
import 'package:morty_app/l10n/app_localizations.dart';
import 'package:morty_app/presentation/characters/bloc/characters_bloc.dart';
import 'package:morty_app/presentation/characters/characters_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Locator.init();
  runApp(const MortyApp());
}

class MortyApp extends StatelessWidget {
  const MortyApp({super.key, this.autoLoad = true});

  final bool autoLoad;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CharactersBloc>(
          create: (_) {
            final bloc = Locator.injection<CharactersBloc>();
            if (autoLoad) {
              bloc.add(CharactersEvent.init());
            }
            return bloc;
          },
        ),
      ],
      child: MaterialApp(
        onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
          useMaterial3: true,
        ),
        home: const CharactersScreen(),
      ),
    );
  }
}
