import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/loan_item_model.dart';
import 'package:samruddhi_s_application1/presentation/loan_page/models/loan_model.dart';
part 'loan_event.dart';
part 'loan_state.dart';

/// A bloc that manages the state of a Loan according to the event that is dispatched to it.
class LoanBloc extends Bloc<LoanEvent, LoanState> {
  LoanBloc(LoanState initialState) : super(initialState) {
    on<LoanInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<LoanState> emit,
  ) {
    emit(state.copyWith(
      yes: event.value,
    ));
  }

  List<LoanItemModel> fillLoanItemList() {
    return List.generate(4, (index) => LoanItemModel());
  }

  _onInitialize(
    LoanInitialEvent event,
    Emitter<LoanState> emit,
  ) async {
    emit(state.copyWith(
      priceController: TextEditingController(),
      priceController1: TextEditingController(),
      yes: false,
    ));
    emit(state.copyWith(
        loanModelObj: state.loanModelObj?.copyWith(
      loanItemList: fillLoanItemList(),
    )));
  }
}
