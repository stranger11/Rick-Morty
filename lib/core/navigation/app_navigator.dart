import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:morty_app/core/navigation/navigate_action.dart';
import 'package:morty_app/core/navigation/navigation_type.dart';
import 'package:morty_app/di/injection.dart';
import 'package:morty_app/presentation/character_details/bloc/character_details_bloc.dart';
import 'package:morty_app/presentation/character_details/character_details_screen.dart';

class AppNavigator {
  static Future<D?> navigate<D>({
    required BuildContext context,
    required NavigateAction action,
  }) async {
    if (action is NavigateBack) {
      Navigator.pop(context);
      return null;
    }

    late NavigateType navigateType;
    late Route<D?> route;

    action.when(
      navigateBack: () {},
      navigateToCharacterDetails: (type, characterId) {
        navigateType = type;
        route = MaterialPageRoute<D?>(
          builder: (_) => BlocProvider<CharacterDetailsBloc>(
            create: (_) => Locator.injection<CharacterDetailsBloc>()
              ..add(CharacterDetailsEvent.init(characterId)),
            child: const CharacterDetailsScreen(),
          ),
        );
      },
    );

    switch (navigateType) {
      case NavigateType.push:
        return Navigator.of(context).push<D?>(route);
      case NavigateType.pushReplacement:
        return Navigator.of(context).pushReplacement<D?, Object?>(route);
      case NavigateType.pushAndRemoveUntil:
        return Navigator.of(context).pushAndRemoveUntil<D?>(route, (_) => false);
      case NavigateType.popUntil:
        Navigator.popUntil(context, (routeForCompare) => route == routeForCompare);
    }
    return null;
  }
}
