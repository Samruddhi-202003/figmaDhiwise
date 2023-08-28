import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/goal_summary_practical_screen/models/goal_summary_practical_model.dart';part 'goal_summary_practical_event.dart';part 'goal_summary_practical_state.dart';/// A bloc that manages the state of a GoalSummaryPractical according to the event that is dispatched to it.
class GoalSummaryPracticalBloc extends Bloc<GoalSummaryPracticalEvent, GoalSummaryPracticalState> {GoalSummaryPracticalBloc(GoalSummaryPracticalState initialState) : super(initialState) { on<GoalSummaryPracticalInitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); }

_changeSwitch(ChangeSwitchEvent event, Emitter<GoalSummaryPracticalState> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
_onInitialize(GoalSummaryPracticalInitialEvent event, Emitter<GoalSummaryPracticalState> emit, ) async  { emit(state.copyWith(group1100Controller: TextEditingController(), isSelectedSwitch: false)); } 
 }
