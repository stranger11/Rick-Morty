import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morty_app/core/bloc/bloc_action.dart';
import 'package:morty_app/core/navigation/navigation_type.dart';

part 'navigate_action.freezed.dart';

@freezed
abstract class NavigateAction extends BlocAction with _$NavigateAction {
  const NavigateAction._();

  factory NavigateAction.navigateBack() = NavigateBack;

  factory NavigateAction.navigateToCharacterDetails(
    NavigateType navigateType,
    int characterId,
  ) = NavigateToCharacterDetails;
}
