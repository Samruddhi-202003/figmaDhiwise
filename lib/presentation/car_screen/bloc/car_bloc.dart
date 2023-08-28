import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/car_screen/models/car_model.dart';
part 'car_event.dart';
part 'car_state.dart';

/// A bloc that manages the state of a Car according to the event that is dispatched to it.
class CarBloc extends Bloc<CarEvent, CarState> {
  CarBloc(CarState initialState) : super(initialState) {
    on<CarInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<CarState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _onInitialize(
    CarInitialEvent event,
    Emitter<CarState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
  }
}
