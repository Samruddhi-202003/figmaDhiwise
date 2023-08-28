import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/android_large_fifteen_screen/models/android_large_fifteen_model.dart';
part 'android_large_fifteen_event.dart';
part 'android_large_fifteen_state.dart';

/// A bloc that manages the state of a AndroidLargeFifteen according to the event that is dispatched to it.
class AndroidLargeFifteenBloc
    extends Bloc<AndroidLargeFifteenEvent, AndroidLargeFifteenState> {
  AndroidLargeFifteenBloc(AndroidLargeFifteenState initialState)
      : super(initialState) {
    on<AndroidLargeFifteenInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<AndroidLargeFifteenState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _onInitialize(
    AndroidLargeFifteenInitialEvent event,
    Emitter<AndroidLargeFifteenState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
  }
}
