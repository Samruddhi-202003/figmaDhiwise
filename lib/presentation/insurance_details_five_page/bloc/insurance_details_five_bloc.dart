import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/insurance_details_five_page/models/insurance_details_five_model.dart';
part 'insurance_details_five_event.dart';
part 'insurance_details_five_state.dart';

/// A bloc that manages the state of a InsuranceDetailsFive according to the event that is dispatched to it.
class InsuranceDetailsFiveBloc
    extends Bloc<InsuranceDetailsFiveEvent, InsuranceDetailsFiveState> {
  InsuranceDetailsFiveBloc(InsuranceDetailsFiveState initialState)
      : super(initialState) {
    on<InsuranceDetailsFiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InsuranceDetailsFiveInitialEvent event,
    Emitter<InsuranceDetailsFiveState> emit,
  ) async {}
}
