import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/insurance_details_three_page/models/insurance_details_three_model.dart';
part 'insurance_details_three_event.dart';
part 'insurance_details_three_state.dart';

/// A bloc that manages the state of a InsuranceDetailsThree according to the event that is dispatched to it.
class InsuranceDetailsThreeBloc
    extends Bloc<InsuranceDetailsThreeEvent, InsuranceDetailsThreeState> {
  InsuranceDetailsThreeBloc(InsuranceDetailsThreeState initialState)
      : super(initialState) {
    on<InsuranceDetailsThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InsuranceDetailsThreeInitialEvent event,
    Emitter<InsuranceDetailsThreeState> emit,
  ) async {}
}
