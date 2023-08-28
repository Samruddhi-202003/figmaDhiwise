import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/my_marriage_screen/models/my_marriage_model.dart';part 'my_marriage_event.dart';part 'my_marriage_state.dart';/// A bloc that manages the state of a MyMarriage according to the event that is dispatched to it.
class MyMarriageBloc extends Bloc<MyMarriageEvent, MyMarriageState> {MyMarriageBloc(MyMarriageState initialState) : super(initialState) { on<MyMarriageInitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); }

_changeSwitch(ChangeSwitchEvent event, Emitter<MyMarriageState> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
_onInitialize(MyMarriageInitialEvent event, Emitter<MyMarriageState> emit, ) async  { emit(state.copyWith(mymarriageController: TextEditingController(), isSelectedSwitch: false)); } 
 }
