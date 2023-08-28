import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listcoverneeded_item_model.dart';
import 'package:samruddhi_s_application1/presentation/android_large_eight_screen/models/android_large_eight_model.dart';
part 'android_large_eight_event.dart';
part 'android_large_eight_state.dart';

/// A bloc that manages the state of a AndroidLargeEight according to the event that is dispatched to it.
class AndroidLargeEightBloc
    extends Bloc<AndroidLargeEightEvent, AndroidLargeEightState> {
  AndroidLargeEightBloc(AndroidLargeEightState initialState)
      : super(initialState) {
    on<AndroidLargeEightInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<AndroidLargeEightState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  List<ListcoverneededItemModel> fillListcoverneededItemList() {
    return List.generate(3, (index) => ListcoverneededItemModel());
  }

  _onInitialize(
    AndroidLargeEightInitialEvent event,
    Emitter<AndroidLargeEightState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
    emit(state.copyWith(
        androidLargeEightModelObj: state.androidLargeEightModelObj?.copyWith(
      listcoverneededItemList: fillListcoverneededItemList(),
    )));
  }
}
