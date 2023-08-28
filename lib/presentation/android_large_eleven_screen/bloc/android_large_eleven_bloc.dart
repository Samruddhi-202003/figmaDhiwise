import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/android_large_eleven_screen/models/android_large_eleven_model.dart';
part 'android_large_eleven_event.dart';
part 'android_large_eleven_state.dart';

/// A bloc that manages the state of a AndroidLargeEleven according to the event that is dispatched to it.
class AndroidLargeElevenBloc
    extends Bloc<AndroidLargeElevenEvent, AndroidLargeElevenState> {
  AndroidLargeElevenBloc(AndroidLargeElevenState initialState)
      : super(initialState) {
    on<AndroidLargeElevenInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<AndroidLargeElevenState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _onInitialize(
    AndroidLargeElevenInitialEvent event,
    Emitter<AndroidLargeElevenState> emit,
  ) async {
    emit(state.copyWith(
      emergancyfundController: TextEditingController(),
      groupEightySixController: TextEditingController(),
      isSelectedSwitch: false,
    ));
  }
}
