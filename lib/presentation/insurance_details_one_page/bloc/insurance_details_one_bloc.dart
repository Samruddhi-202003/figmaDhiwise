import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/insurance_details_one_page/models/insurance_details_one_model.dart';
part 'insurance_details_one_event.dart';
part 'insurance_details_one_state.dart';

/// A bloc that manages the state of a InsuranceDetailsOne according to the event that is dispatched to it.
class InsuranceDetailsOneBloc
    extends Bloc<InsuranceDetailsOneEvent, InsuranceDetailsOneState> {
  InsuranceDetailsOneBloc(InsuranceDetailsOneState initialState)
      : super(initialState) {
    on<InsuranceDetailsOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InsuranceDetailsOneInitialEvent event,
    Emitter<InsuranceDetailsOneState> emit,
  ) async {}
}
