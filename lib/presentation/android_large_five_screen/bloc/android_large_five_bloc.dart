import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/android_large_five_screen/models/android_large_five_model.dart';
part 'android_large_five_event.dart';
part 'android_large_five_state.dart';

/// A bloc that manages the state of a AndroidLargeFive according to the event that is dispatched to it.
class AndroidLargeFiveBloc
    extends Bloc<AndroidLargeFiveEvent, AndroidLargeFiveState> {
  AndroidLargeFiveBloc(AndroidLargeFiveState initialState)
      : super(initialState) {
    on<AndroidLargeFiveInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<ChangeRadioButton1Event>(_changeRadioButton1);
    on<ChangeRadioButton2Event>(_changeRadioButton2);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<AndroidLargeFiveState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  _changeRadioButton1(
    ChangeRadioButton1Event event,
    Emitter<AndroidLargeFiveState> emit,
  ) {
    emit(state.copyWith(
      radioGroup1: event.value,
    ));
  }

  _changeRadioButton2(
    ChangeRadioButton2Event event,
    Emitter<AndroidLargeFiveState> emit,
  ) {
    emit(state.copyWith(
      homebike: event.value,
    ));
  }

  List<String> fillRadioList() {
    return [];
  }

  List<String> fillRadioList1() {
    return [];
  }

  _onInitialize(
    AndroidLargeFiveInitialEvent event,
    Emitter<AndroidLargeFiveState> emit,
  ) async {
    emit(state.copyWith(
      radioGroup: "",
      radioGroup1: "",
      homebike: "",
    ));
    emit(state.copyWith(
        androidLargeFiveModelObj: state.androidLargeFiveModelObj?.copyWith(
      radioList: fillRadioList(),
      radioList1: fillRadioList1(),
    )));
  }
}
