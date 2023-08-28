import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/retirement_screen/models/retirement_model.dart';part 'retirement_event.dart';part 'retirement_state.dart';/// A bloc that manages the state of a Retirement according to the event that is dispatched to it.
class RetirementBloc extends Bloc<RetirementEvent, RetirementState> {RetirementBloc(RetirementState initialState) : super(initialState) { on<RetirementInitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); }

_changeSwitch(ChangeSwitchEvent event, Emitter<RetirementState> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
_onInitialize(RetirementInitialEvent event, Emitter<RetirementState> emit, ) async  { emit(state.copyWith(groupEightySixController: TextEditingController(), isSelectedSwitch: false)); } 
 }
