import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/bad_loan_square_off_one_screen/models/bad_loan_square_off_one_model.dart';part 'bad_loan_square_off_one_event.dart';part 'bad_loan_square_off_one_state.dart';/// A bloc that manages the state of a BadLoanSquareOffOne according to the event that is dispatched to it.
class BadLoanSquareOffOneBloc extends Bloc<BadLoanSquareOffOneEvent, BadLoanSquareOffOneState> {BadLoanSquareOffOneBloc(BadLoanSquareOffOneState initialState) : super(initialState) { on<BadLoanSquareOffOneInitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); }

_changeSwitch(ChangeSwitchEvent event, Emitter<BadLoanSquareOffOneState> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
_onInitialize(BadLoanSquareOffOneInitialEvent event, Emitter<BadLoanSquareOffOneState> emit, ) async  { emit(state.copyWith(isSelectedSwitch: false)); } 
 }
