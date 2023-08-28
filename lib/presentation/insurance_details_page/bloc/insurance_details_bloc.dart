import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/insurance_details_page/models/insurance_details_model.dart';
part 'insurance_details_event.dart';
part 'insurance_details_state.dart';

/// A bloc that manages the state of a InsuranceDetails according to the event that is dispatched to it.
class InsuranceDetailsBloc
    extends Bloc<InsuranceDetailsEvent, InsuranceDetailsState> {
  InsuranceDetailsBloc(InsuranceDetailsState initialState)
      : super(initialState) {
    on<InsuranceDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InsuranceDetailsInitialEvent event,
    Emitter<InsuranceDetailsState> emit,
  ) async {
    emit(state.copyWith(
      healthinsuranceController: TextEditingController(),
      monthlyoneController: TextEditingController(),
      amountController: TextEditingController(),
      dateController: TextEditingController(),
      dateController1: TextEditingController(),
    ));
  }
}
