import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/monitoring_one_screen/models/monitoring_one_model.dart';
part 'monitoring_one_event.dart';
part 'monitoring_one_state.dart';

/// A bloc that manages the state of a MonitoringOne according to the event that is dispatched to it.
class MonitoringOneBloc extends Bloc<MonitoringOneEvent, MonitoringOneState> {
  MonitoringOneBloc(MonitoringOneState initialState) : super(initialState) {
    on<MonitoringOneInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<MonitoringOneState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _onInitialize(
    MonitoringOneInitialEvent event,
    Emitter<MonitoringOneState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
  }
}
