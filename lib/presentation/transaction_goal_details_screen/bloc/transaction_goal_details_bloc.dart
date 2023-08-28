import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/transaction_goal_details_screen/models/transaction_goal_details_model.dart';part 'transaction_goal_details_event.dart';part 'transaction_goal_details_state.dart';/// A bloc that manages the state of a TransactionGoalDetails according to the event that is dispatched to it.
class TransactionGoalDetailsBloc extends Bloc<TransactionGoalDetailsEvent, TransactionGoalDetailsState> {TransactionGoalDetailsBloc(TransactionGoalDetailsState initialState) : super(initialState) { on<TransactionGoalDetailsInitialEvent>(_onInitialize); }

_onInitialize(TransactionGoalDetailsInitialEvent event, Emitter<TransactionGoalDetailsState> emit, ) async  {  } 
 }
