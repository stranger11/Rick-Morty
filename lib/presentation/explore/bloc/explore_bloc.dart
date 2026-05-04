import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:morty_app/core/bloc/base_bloc.dart';
import 'package:morty_app/core/navigation/navigate_action.dart';

import 'explore_event.dart';
import 'explore_state.dart';

@injectable
class ExploreBloc extends BaseBloc<ExploreEvent, ExploreState> {
  ExploreBloc() : super(const ExploreState()) {
    on<ExploreOpenNext>(_onOpenNext);
  }

  FutureOr<void> _onOpenNext(
    ExploreOpenNext event,
    Emitter<ExploreState> emit,
  ) {
    emit(const ExploreState());
    emit(
      ExploreState(action: NavigateAction.navigateToExploreNext()),
    );
  }
}
