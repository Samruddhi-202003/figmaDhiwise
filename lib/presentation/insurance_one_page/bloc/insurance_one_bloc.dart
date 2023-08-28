import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/insurance_one_page/models/insurance_one_model.dart';
part 'insurance_one_event.dart';
part 'insurance_one_state.dart';

/// A bloc that manages the state of a InsuranceOne according to the event that is dispatched to it.
class InsuranceOneBloc extends Bloc<InsuranceOneEvent, InsuranceOneState> {
  InsuranceOneBloc(InsuranceOneState initialState) : super(initialState) {
    on<InsuranceOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InsuranceOneInitialEvent event,
    Emitter<InsuranceOneState> emit,
  ) async {
    emit(state.copyWith(
      healthinsuranceController: TextEditingController(),
      monthlyoneController: TextEditingController(),
      dateController: TextEditingController(),
    ));
  }
}
