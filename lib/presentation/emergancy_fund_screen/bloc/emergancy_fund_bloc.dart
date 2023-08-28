import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/emergancy_fund_screen/models/emergancy_fund_model.dart';part 'emergancy_fund_event.dart';part 'emergancy_fund_state.dart';/// A bloc that manages the state of a EmergancyFund according to the event that is dispatched to it.
class EmergancyFundBloc extends Bloc<EmergancyFundEvent, EmergancyFundState> {EmergancyFundBloc(EmergancyFundState initialState) : super(initialState) { on<EmergancyFundInitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); }

_changeSwitch(ChangeSwitchEvent event, Emitter<EmergancyFundState> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
_onInitialize(EmergancyFundInitialEvent event, Emitter<EmergancyFundState> emit, ) async  { emit(state.copyWith(emergancyfundController: TextEditingController(), isSelectedSwitch: false)); } 
 }
