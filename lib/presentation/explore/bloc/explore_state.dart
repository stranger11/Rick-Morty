import 'package:morty_app/core/bloc/base_bloc_state.dart';
import 'package:morty_app/core/bloc/bloc_action.dart';

class ExploreState extends BaseBlocState {
  const ExploreState({this.action});

  @override
  final BlocAction? action;
}
