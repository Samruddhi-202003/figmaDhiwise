import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/insurance_two_page/models/insurance_two_model.dart';
part 'insurance_two_event.dart';
part 'insurance_two_state.dart';

/// A bloc that manages the state of a InsuranceTwo according to the event that is dispatched to it.
class InsuranceTwoBloc extends Bloc<InsuranceTwoEvent, InsuranceTwoState> {
  InsuranceTwoBloc(InsuranceTwoState initialState) : super(initialState) {
    on<InsuranceTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InsuranceTwoInitialEvent event,
    Emitter<InsuranceTwoState> emit,
  ) async {}
}
