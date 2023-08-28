import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/welcome_baby_screen/models/welcome_baby_model.dart';part 'welcome_baby_event.dart';part 'welcome_baby_state.dart';/// A bloc that manages the state of a WelcomeBaby according to the event that is dispatched to it.
class WelcomeBabyBloc extends Bloc<WelcomeBabyEvent, WelcomeBabyState> {WelcomeBabyBloc(WelcomeBabyState initialState) : super(initialState) { on<WelcomeBabyInitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); }

_changeSwitch(ChangeSwitchEvent event, Emitter<WelcomeBabyState> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
_onInitialize(WelcomeBabyInitialEvent event, Emitter<WelcomeBabyState> emit, ) async  { emit(state.copyWith(welcomingourController: TextEditingController(), isSelectedSwitch: false)); } 
 }
