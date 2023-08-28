import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/bad_loan_square_off_screen/models/bad_loan_square_off_model.dart';part 'bad_loan_square_off_event.dart';part 'bad_loan_square_off_state.dart';/// A bloc that manages the state of a BadLoanSquareOff according to the event that is dispatched to it.
class BadLoanSquareOffBloc extends Bloc<BadLoanSquareOffEvent, BadLoanSquareOffState> {BadLoanSquareOffBloc(BadLoanSquareOffState initialState) : super(initialState) { on<BadLoanSquareOffInitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); }

_changeSwitch(ChangeSwitchEvent event, Emitter<BadLoanSquareOffState> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
_onInitialize(BadLoanSquareOffInitialEvent event, Emitter<BadLoanSquareOffState> emit, ) async  { emit(state.copyWith(isSelectedSwitch: false)); } 
 }
