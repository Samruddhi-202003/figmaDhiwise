import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/insurance_details_four_page/models/insurance_details_four_model.dart';
part 'insurance_details_four_event.dart';
part 'insurance_details_four_state.dart';

/// A bloc that manages the state of a InsuranceDetailsFour according to the event that is dispatched to it.
class InsuranceDetailsFourBloc
    extends Bloc<InsuranceDetailsFourEvent, InsuranceDetailsFourState> {
  InsuranceDetailsFourBloc(InsuranceDetailsFourState initialState)
      : super(initialState) {
    on<InsuranceDetailsFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InsuranceDetailsFourInitialEvent event,
    Emitter<InsuranceDetailsFourState> emit,
  ) async {}
}
