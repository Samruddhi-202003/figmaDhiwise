import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/transaction_loan_one_screen/models/transaction_loan_one_model.dart';part 'transaction_loan_one_event.dart';part 'transaction_loan_one_state.dart';/// A bloc that manages the state of a TransactionLoanOne according to the event that is dispatched to it.
class TransactionLoanOneBloc extends Bloc<TransactionLoanOneEvent, TransactionLoanOneState> {TransactionLoanOneBloc(TransactionLoanOneState initialState) : super(initialState) { on<TransactionLoanOneInitialEvent>(_onInitialize); on<ChangeCheckBoxEvent>(_changeCheckBox); }

_changeCheckBox(ChangeCheckBoxEvent event, Emitter<TransactionLoanOneState> emit, ) { emit(state.copyWith(oldValue: event.value)); } 
_onInitialize(TransactionLoanOneInitialEvent event, Emitter<TransactionLoanOneState> emit, ) async  { emit(state.copyWith(formsavingsController: TextEditingController(), bankdepositdetaController: TextEditingController(), oldValue: false)); } 
 }
