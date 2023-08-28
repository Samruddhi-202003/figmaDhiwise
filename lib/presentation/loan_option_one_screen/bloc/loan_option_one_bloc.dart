import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/loan_option_one_screen/models/loan_option_one_model.dart';
part 'loan_option_one_event.dart';
part 'loan_option_one_state.dart';

/// A bloc that manages the state of a LoanOptionOne according to the event that is dispatched to it.
class LoanOptionOneBloc extends Bloc<LoanOptionOneEvent, LoanOptionOneState> {
  LoanOptionOneBloc(LoanOptionOneState initialState) : super(initialState) {
    on<LoanOptionOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoanOptionOneInitialEvent event,
    Emitter<LoanOptionOneState> emit,
  ) async {}
}
