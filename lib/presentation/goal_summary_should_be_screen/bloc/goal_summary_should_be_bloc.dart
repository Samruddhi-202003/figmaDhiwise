import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/goal_summary_should_be_screen/models/goal_summary_should_be_model.dart';part 'goal_summary_should_be_event.dart';part 'goal_summary_should_be_state.dart';/// A bloc that manages the state of a GoalSummaryShouldBe according to the event that is dispatched to it.
class GoalSummaryShouldBeBloc extends Bloc<GoalSummaryShouldBeEvent, GoalSummaryShouldBeState> {GoalSummaryShouldBeBloc(GoalSummaryShouldBeState initialState) : super(initialState) { on<GoalSummaryShouldBeInitialEvent>(_onInitialize); }

_onInitialize(GoalSummaryShouldBeInitialEvent event, Emitter<GoalSummaryShouldBeState> emit, ) async  { emit(state.copyWith(group1098Controller: TextEditingController())); } 
 }
