import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/loan_one_page/models/loan_one_model.dart';
part 'loan_one_event.dart';
part 'loan_one_state.dart';

/// A bloc that manages the state of a LoanOne according to the event that is dispatched to it.
class LoanOneBloc extends Bloc<LoanOneEvent, LoanOneState> {
  LoanOneBloc(LoanOneState initialState) : super(initialState) {
    on<LoanOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoanOneInitialEvent event,
    Emitter<LoanOneState> emit,
  ) async {
    emit(state.copyWith(
      carloanoneController: TextEditingController(),
      dateController: TextEditingController(),
      dateController1: TextEditingController(),
    ));
  }
}
