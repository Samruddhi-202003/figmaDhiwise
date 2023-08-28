import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/dashboard_two_screen/models/dashboard_two_model.dart';
part 'dashboard_two_event.dart';
part 'dashboard_two_state.dart';

/// A bloc that manages the state of a DashboardTwo according to the event that is dispatched to it.
class DashboardTwoBloc extends Bloc<DashboardTwoEvent, DashboardTwoState> {
  DashboardTwoBloc(DashboardTwoState initialState) : super(initialState) {
    on<DashboardTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DashboardTwoInitialEvent event,
    Emitter<DashboardTwoState> emit,
  ) async {}
}
