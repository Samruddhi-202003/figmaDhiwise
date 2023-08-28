import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/loan_two_page/models/loan_two_model.dart';
part 'loan_two_event.dart';
part 'loan_two_state.dart';

/// A bloc that manages the state of a LoanTwo according to the event that is dispatched to it.
class LoanTwoBloc extends Bloc<LoanTwoEvent, LoanTwoState> {
  LoanTwoBloc(LoanTwoState initialState) : super(initialState) {
    on<LoanTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoanTwoInitialEvent event,
    Emitter<LoanTwoState> emit,
  ) async {}
}
