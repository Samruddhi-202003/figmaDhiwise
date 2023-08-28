import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/insurance_details_seven_page/models/insurance_details_seven_model.dart';
part 'insurance_details_seven_event.dart';
part 'insurance_details_seven_state.dart';

/// A bloc that manages the state of a InsuranceDetailsSeven according to the event that is dispatched to it.
class InsuranceDetailsSevenBloc
    extends Bloc<InsuranceDetailsSevenEvent, InsuranceDetailsSevenState> {
  InsuranceDetailsSevenBloc(InsuranceDetailsSevenState initialState)
      : super(initialState) {
    on<InsuranceDetailsSevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InsuranceDetailsSevenInitialEvent event,
    Emitter<InsuranceDetailsSevenState> emit,
  ) async {}
}
