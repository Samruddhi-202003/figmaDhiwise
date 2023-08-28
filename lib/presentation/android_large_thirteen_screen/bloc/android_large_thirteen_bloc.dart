import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/android_large_thirteen_screen/models/android_large_thirteen_model.dart';
part 'android_large_thirteen_event.dart';
part 'android_large_thirteen_state.dart';

/// A bloc that manages the state of a AndroidLargeThirteen according to the event that is dispatched to it.
class AndroidLargeThirteenBloc
    extends Bloc<AndroidLargeThirteenEvent, AndroidLargeThirteenState> {
  AndroidLargeThirteenBloc(AndroidLargeThirteenState initialState)
      : super(initialState) {
    on<AndroidLargeThirteenInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<AndroidLargeThirteenState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _onInitialize(
    AndroidLargeThirteenInitialEvent event,
    Emitter<AndroidLargeThirteenState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
  }
}
