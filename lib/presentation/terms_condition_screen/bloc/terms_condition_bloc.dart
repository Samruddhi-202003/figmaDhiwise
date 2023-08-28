import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/terms_condition_screen/models/terms_condition_model.dart';part 'terms_condition_event.dart';part 'terms_condition_state.dart';/// A bloc that manages the state of a TermsCondition according to the event that is dispatched to it.
class TermsConditionBloc extends Bloc<TermsConditionEvent, TermsConditionState> {TermsConditionBloc(TermsConditionState initialState) : super(initialState) { on<TermsConditionInitialEvent>(_onInitialize); }

_onInitialize(TermsConditionInitialEvent event, Emitter<TermsConditionState> emit, ) async  {  } 
 }
