import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/priyanka_marriage_screen/models/priyanka_marriage_model.dart';part 'priyanka_marriage_event.dart';part 'priyanka_marriage_state.dart';/// A bloc that manages the state of a PriyankaMarriage according to the event that is dispatched to it.
class PriyankaMarriageBloc extends Bloc<PriyankaMarriageEvent, PriyankaMarriageState> {PriyankaMarriageBloc(PriyankaMarriageState initialState) : super(initialState) { on<PriyankaMarriageInitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); }

_changeSwitch(ChangeSwitchEvent event, Emitter<PriyankaMarriageState> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
_onInitialize(PriyankaMarriageInitialEvent event, Emitter<PriyankaMarriageState> emit, ) async  { emit(state.copyWith(groupEightySixController: TextEditingController(), isSelectedSwitch: false)); } 
 }
