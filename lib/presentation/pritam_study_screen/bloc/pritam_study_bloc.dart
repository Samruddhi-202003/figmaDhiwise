import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/pritam_study_screen/models/pritam_study_model.dart';part 'pritam_study_event.dart';part 'pritam_study_state.dart';/// A bloc that manages the state of a PritamStudy according to the event that is dispatched to it.
class PritamStudyBloc extends Bloc<PritamStudyEvent, PritamStudyState> {PritamStudyBloc(PritamStudyState initialState) : super(initialState) { on<PritamStudyInitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); }

_changeSwitch(ChangeSwitchEvent event, Emitter<PritamStudyState> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
_onInitialize(PritamStudyInitialEvent event, Emitter<PritamStudyState> emit, ) async  { emit(state.copyWith(groupEightySixController: TextEditingController(), isSelectedSwitch: false)); } 
 }
