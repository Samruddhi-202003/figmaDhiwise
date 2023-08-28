import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/loan_details_page/models/loan_details_model.dart';
part 'loan_details_event.dart';
part 'loan_details_state.dart';

/// A bloc that manages the state of a LoanDetails according to the event that is dispatched to it.
class LoanDetailsBloc extends Bloc<LoanDetailsEvent, LoanDetailsState> {
  LoanDetailsBloc(LoanDetailsState initialState) : super(initialState) {
    on<LoanDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoanDetailsInitialEvent event,
    Emitter<LoanDetailsState> emit,
  ) async {}
}
