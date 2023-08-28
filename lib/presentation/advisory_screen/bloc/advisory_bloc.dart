import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/advisory_item_model.dart';import 'package:samruddhi_s_application1/presentation/advisory_screen/models/advisory_model.dart';part 'advisory_event.dart';part 'advisory_state.dart';/// A bloc that manages the state of a Advisory according to the event that is dispatched to it.
class AdvisoryBloc extends Bloc<AdvisoryEvent, AdvisoryState> {AdvisoryBloc(AdvisoryState initialState) : super(initialState) { on<AdvisoryInitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); }

_changeSwitch(ChangeSwitchEvent event, Emitter<AdvisoryState> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
List<AdvisoryItemModel> fillAdvisoryItemList() { return List.generate(5, (index) => AdvisoryItemModel()); } 
_onInitialize(AdvisoryInitialEvent event, Emitter<AdvisoryState> emit, ) async  { emit(state.copyWith(isSelectedSwitch: false)); emit(state.copyWith(advisoryModelObj: state.advisoryModelObj?.copyWith(advisoryItemList: fillAdvisoryItemList()))); } 
 }
