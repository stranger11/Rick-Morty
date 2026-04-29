import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseBloc<Event, State> extends Bloc<Event, State> {
  BaseBloc(super.initialState);

  final List<StreamSubscription<dynamic>> subscriptions = [];

  @override
  Future<void> close() async {
    for (final subscription in subscriptions) {
      await subscription.cancel();
    }
    return super.close();
  }
}
