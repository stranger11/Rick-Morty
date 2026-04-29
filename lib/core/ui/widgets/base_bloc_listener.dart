import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:morty_app/core/bloc/base_bloc_state.dart';
import 'package:morty_app/core/bloc/bloc_action.dart';
import 'package:morty_app/core/navigation/app_navigator.dart';
import 'package:morty_app/core/navigation/navigate_action.dart';

class BaseBlocListener<B extends BlocBase<S>, S extends BaseBlocState>
    extends BlocListener<B, S> {
  BaseBlocListener({
    super.key,
    super.child,
    BlocListenerCondition<S>? listenWhen,
    Future<void> Function(BuildContext context, S state, BlocAction? action)?
        listener,
  }) : super(
          listenWhen: (previous, current) {
            return previous.action != current.action ||
                listenWhen?.call(previous, current) == true;
          },
          listener: (context, state) async {
            final action = state.action;
            await listener?.call(context, state, action);
            if (action is NavigateAction) {
              SchedulerBinding.instance.addPostFrameCallback((_) async {
                await AppNavigator.navigate(context: context, action: action);
              });
            }
          },
        );
}
