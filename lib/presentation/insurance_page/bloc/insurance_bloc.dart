import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/insurance_page/models/insurance_model.dart';
part 'insurance_event.dart';
part 'insurance_state.dart';

/// A bloc that manages the state of a Insurance according to the event that is dispatched to it.
class InsuranceBloc extends Bloc<InsuranceEvent, InsuranceState> {
  InsuranceBloc(InsuranceState initialState) : super(initialState) {
    on<InsuranceInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<InsuranceState> emit,
  ) {
    emit(state.copyWith(
      yes: event.value,
    ));
  }

  _onInitialize(
    InsuranceInitialEvent event,
    Emitter<InsuranceState> emit,
  ) async {
    emit(state.copyWith(
      healthinsuranceController: TextEditingController(),
      monthlyController: TextEditingController(),
      dateController: TextEditingController(),
      yes: false,
    ));
  }
}
