import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/edit_insurance_details_page/models/edit_insurance_details_model.dart';
part 'edit_insurance_details_event.dart';
part 'edit_insurance_details_state.dart';

/// A bloc that manages the state of a EditInsuranceDetails according to the event that is dispatched to it.
class EditInsuranceDetailsBloc
    extends Bloc<EditInsuranceDetailsEvent, EditInsuranceDetailsState> {
  EditInsuranceDetailsBloc(EditInsuranceDetailsState initialState)
      : super(initialState) {
    on<EditInsuranceDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EditInsuranceDetailsInitialEvent event,
    Emitter<EditInsuranceDetailsState> emit,
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
