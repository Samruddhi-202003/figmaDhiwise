import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/priyanka_s_study_screen/models/priyanka_s_study_model.dart';part 'priyanka_s_study_event.dart';part 'priyanka_s_study_state.dart';/// A bloc that manages the state of a PriyankaSStudy according to the event that is dispatched to it.
class PriyankaSStudyBloc extends Bloc<PriyankaSStudyEvent, PriyankaSStudyState> {PriyankaSStudyBloc(PriyankaSStudyState initialState) : super(initialState) { on<PriyankaSStudyInitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); }

_changeSwitch(ChangeSwitchEvent event, Emitter<PriyankaSStudyState> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
_onInitialize(PriyankaSStudyInitialEvent event, Emitter<PriyankaSStudyState> emit, ) async  { emit(state.copyWith(groupEightySixController: TextEditingController(), isSelectedSwitch: false)); } 
 }
