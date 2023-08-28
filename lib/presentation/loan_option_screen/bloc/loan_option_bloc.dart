import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/loan_option_screen/models/loan_option_model.dart';
part 'loan_option_event.dart';
part 'loan_option_state.dart';

/// A bloc that manages the state of a LoanOption according to the event that is dispatched to it.
class LoanOptionBloc extends Bloc<LoanOptionEvent, LoanOptionState> {
  LoanOptionBloc(LoanOptionState initialState) : super(initialState) {
    on<LoanOptionInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoanOptionInitialEvent event,
    Emitter<LoanOptionState> emit,
  ) async {}
}
