import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/transaction_loan_screen/models/transaction_loan_model.dart';part 'transaction_loan_event.dart';part 'transaction_loan_state.dart';/// A bloc that manages the state of a TransactionLoan according to the event that is dispatched to it.
class TransactionLoanBloc extends Bloc<TransactionLoanEvent, TransactionLoanState> {TransactionLoanBloc(TransactionLoanState initialState) : super(initialState) { on<TransactionLoanInitialEvent>(_onInitialize); on<ChangeCheckBoxEvent>(_changeCheckBox); }

_changeCheckBox(ChangeCheckBoxEvent event, Emitter<TransactionLoanState> emit, ) { emit(state.copyWith(old: event.value)); } 
_onInitialize(TransactionLoanInitialEvent event, Emitter<TransactionLoanState> emit, ) async  { emit(state.copyWith(carloanController: TextEditingController(), payemiController: TextEditingController(), formsavingsController: TextEditingController(), old: false)); } 
 }
