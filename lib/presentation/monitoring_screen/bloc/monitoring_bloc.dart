import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/monitoring_item_model.dart';import 'package:samruddhi_s_application1/presentation/monitoring_screen/models/monitoring_model.dart';part 'monitoring_event.dart';part 'monitoring_state.dart';/// A bloc that manages the state of a Monitoring according to the event that is dispatched to it.
class MonitoringBloc extends Bloc<MonitoringEvent, MonitoringState> {MonitoringBloc(MonitoringState initialState) : super(initialState) { on<MonitoringInitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); }

_changeSwitch(ChangeSwitchEvent event, Emitter<MonitoringState> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
List<MonitoringItemModel> fillMonitoringItemList() { return List.generate(5, (index) => MonitoringItemModel()); } 
_onInitialize(MonitoringInitialEvent event, Emitter<MonitoringState> emit, ) async  { emit(state.copyWith(isSelectedSwitch: false)); emit(state.copyWith(monitoringModelObj: state.monitoringModelObj?.copyWith(monitoringItemList: fillMonitoringItemList()))); } 
 }
