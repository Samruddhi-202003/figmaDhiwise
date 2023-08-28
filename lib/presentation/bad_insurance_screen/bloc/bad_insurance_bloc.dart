import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/bad_insurance_screen/models/bad_insurance_model.dart';part 'bad_insurance_event.dart';part 'bad_insurance_state.dart';/// A bloc that manages the state of a BadInsurance according to the event that is dispatched to it.
class BadInsuranceBloc extends Bloc<BadInsuranceEvent, BadInsuranceState> {BadInsuranceBloc(BadInsuranceState initialState) : super(initialState) { on<BadInsuranceInitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); }

_changeSwitch(ChangeSwitchEvent event, Emitter<BadInsuranceState> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
_onInitialize(BadInsuranceInitialEvent event, Emitter<BadInsuranceState> emit, ) async  { emit(state.copyWith(isSelectedSwitch: false)); } 
 }
