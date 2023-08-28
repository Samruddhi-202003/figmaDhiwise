import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/transaction_insurance_screen/models/transaction_insurance_model.dart';part 'transaction_insurance_event.dart';part 'transaction_insurance_state.dart';/// A bloc that manages the state of a TransactionInsurance according to the event that is dispatched to it.
class TransactionInsuranceBloc extends Bloc<TransactionInsuranceEvent, TransactionInsuranceState> {TransactionInsuranceBloc(TransactionInsuranceState initialState) : super(initialState) { on<TransactionInsuranceInitialEvent>(_onInitialize); on<ChangeCheckBoxEvent>(_changeCheckBox); }

_changeCheckBox(ChangeCheckBoxEvent event, Emitter<TransactionInsuranceState> emit, ) { emit(state.copyWith(old: event.value)); } 
_onInitialize(TransactionInsuranceInitialEvent event, Emitter<TransactionInsuranceState> emit, ) async  { emit(state.copyWith(healthinsuranceController: TextEditingController(), formsavingsController: TextEditingController(), old: false)); } 
 }
