import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:morty_app/core/navigation/app_router.dart';
import 'package:morty_app/core/navigation/navigate_action.dart';
import 'package:morty_app/core/navigation/navigation_type.dart';

/// Вся навигация на базе [go_router]. Вызывается из UI только через [NavigateAction]
/// и [BaseBlocListener], либо напрямую здесь при разборе экшена.
abstract final class AppNavigator {
  AppNavigator._();

  /// Разбор [NavigateAction] после выхода из блока (см. [BaseBlocListener]).
  static Future<void> applyNavigateAction(
    BuildContext context,
    NavigateAction action,
  ) async {
    if (action is NavigateBack) {
      pop(context);
      return;
    }
    if (action is NavigateToSettings) {
      navigateToSettings(context);
      return;
    }
    if (action is NavigateToExploreNext) {
      navigateToExploreNext(context);
      return;
    }
    if (action is NavigateToCharacterDetails) {
      await openCharacterDetails(
        context,
        action.characterId,
        navigateType: action.navigateType,
      );
    }
  }

  /// Переключает на вкладку настроек и сбрасывает её стек на корень.
  static void navigateToSettings(BuildContext context) {
    context.goNamed(AppRouteNames.settings);
  }

  static void navigateToExploreNext(BuildContext context) {
    context.pushNamed(AppRouteNames.exploreNext);
  }

  static Future<T?> openCharacterDetails<T>(
    BuildContext context,
    int characterId, {
    NavigateType navigateType = NavigateType.push,
  }) async {
    final routeName = AppRouteNames.characterDetails;
    final pathParameters = {'id': characterId.toString()};

    switch (navigateType) {
      case NavigateType.push:
        return context.pushNamed<T>(
          routeName,
          pathParameters: pathParameters,
        );
      case NavigateType.pushReplacement:
        context.pushReplacementNamed(
          routeName,
          pathParameters: pathParameters,
        );
        return null;
      case NavigateType.pushAndRemoveUntil:
        context.goNamed(routeName, pathParameters: pathParameters);
        return null;
      case NavigateType.popUntil:
        context.goNamed(AppRouteNames.characters);
        return null;
    }
  }

  static void pop(BuildContext context) {
    if (context.canPop()) {
      context.pop();
    }
  }

  static void goHome(BuildContext context) {
    context.goNamed(AppRouteNames.characters);
  }
}
