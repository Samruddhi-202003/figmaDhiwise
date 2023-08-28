import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/loan_two1_page/models/loan_two1_model.dart';
part 'loan_two1_event.dart';
part 'loan_two1_state.dart';

/// A bloc that manages the state of a LoanTwo1 according to the event that is dispatched to it.
class LoanTwo1Bloc extends Bloc<LoanTwo1Event, LoanTwo1State> {
  LoanTwo1Bloc(LoanTwo1State initialState) : super(initialState) {
    on<LoanTwo1InitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoanTwo1InitialEvent event,
    Emitter<LoanTwo1State> emit,
  ) async {}
}
