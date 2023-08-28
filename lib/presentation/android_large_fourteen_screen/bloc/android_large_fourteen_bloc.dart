import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/android_large_fourteen_screen/models/android_large_fourteen_model.dart';
part 'android_large_fourteen_event.dart';
part 'android_large_fourteen_state.dart';

/// A bloc that manages the state of a AndroidLargeFourteen according to the event that is dispatched to it.
class AndroidLargeFourteenBloc
    extends Bloc<AndroidLargeFourteenEvent, AndroidLargeFourteenState> {
  AndroidLargeFourteenBloc(AndroidLargeFourteenState initialState)
      : super(initialState) {
    on<AndroidLargeFourteenInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<AndroidLargeFourteenState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _onInitialize(
    AndroidLargeFourteenInitialEvent event,
    Emitter<AndroidLargeFourteenState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
  }
}
