import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/coverneededbutt_item_model.dart';
import 'package:samruddhi_s_application1/presentation/android_large_sixteen_screen/models/android_large_sixteen_model.dart';
part 'android_large_sixteen_event.dart';
part 'android_large_sixteen_state.dart';

/// A bloc that manages the state of a AndroidLargeSixteen according to the event that is dispatched to it.
class AndroidLargeSixteenBloc
    extends Bloc<AndroidLargeSixteenEvent, AndroidLargeSixteenState> {
  AndroidLargeSixteenBloc(AndroidLargeSixteenState initialState)
      : super(initialState) {
    on<AndroidLargeSixteenInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<AndroidLargeSixteenState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  List<CoverneededbuttItemModel> fillCoverneededbuttItemList() {
    return List.generate(3, (index) => CoverneededbuttItemModel());
  }

  _onInitialize(
    AndroidLargeSixteenInitialEvent event,
    Emitter<AndroidLargeSixteenState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
    emit(state.copyWith(
        androidLargeSixteenModelObj:
            state.androidLargeSixteenModelObj?.copyWith(
      coverneededbuttItemList: fillCoverneededbuttItemList(),
    )));
  }
}
