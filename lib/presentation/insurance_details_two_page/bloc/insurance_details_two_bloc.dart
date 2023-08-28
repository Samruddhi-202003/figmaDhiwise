import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/insurance_details_two_page/models/insurance_details_two_model.dart';
part 'insurance_details_two_event.dart';
part 'insurance_details_two_state.dart';

/// A bloc that manages the state of a InsuranceDetailsTwo according to the event that is dispatched to it.
class InsuranceDetailsTwoBloc
    extends Bloc<InsuranceDetailsTwoEvent, InsuranceDetailsTwoState> {
  InsuranceDetailsTwoBloc(InsuranceDetailsTwoState initialState)
      : super(initialState) {
    on<InsuranceDetailsTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InsuranceDetailsTwoInitialEvent event,
    Emitter<InsuranceDetailsTwoState> emit,
  ) async {}
}
