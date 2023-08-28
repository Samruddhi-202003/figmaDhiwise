import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/transaction_goal_screen/models/transaction_goal_model.dart';part 'transaction_goal_event.dart';part 'transaction_goal_state.dart';/// A bloc that manages the state of a TransactionGoal according to the event that is dispatched to it.
class TransactionGoalBloc extends Bloc<TransactionGoalEvent, TransactionGoalState> {TransactionGoalBloc(TransactionGoalState initialState) : super(initialState) { on<TransactionGoalInitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown); on<ChangeDropDown1Event>(_changeDropDown1); }

_changeDropDown(ChangeDropDownEvent event, Emitter<TransactionGoalState> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
_changeDropDown1(ChangeDropDown1Event event, Emitter<TransactionGoalState> emit, ) { emit(state.copyWith(selectedDropDownValue1: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
List<SelectionPopupModel> fillDropdownItemList1() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
_onInitialize(TransactionGoalInitialEvent event, Emitter<TransactionGoalState> emit, ) async  { emit(state.copyWith(amountController: TextEditingController())); emit(state.copyWith(transactionGoalModelObj: state.transactionGoalModelObj?.copyWith(dropdownItemList: fillDropdownItemList(), dropdownItemList1: fillDropdownItemList1()))); } 
 }
