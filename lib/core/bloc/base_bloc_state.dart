import 'package:morty_app/core/bloc/bloc_action.dart';

abstract class BaseBlocState {
  const BaseBlocState();

  BlocAction? get action;
}
