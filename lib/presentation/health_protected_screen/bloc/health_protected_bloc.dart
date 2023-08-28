import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/health_item_model.dart';import 'package:samruddhi_s_application1/presentation/health_protected_screen/models/health_protected_model.dart';part 'health_protected_event.dart';part 'health_protected_state.dart';/// A bloc that manages the state of a HealthProtected according to the event that is dispatched to it.
class HealthProtectedBloc extends Bloc<HealthProtectedEvent, HealthProtectedState> {HealthProtectedBloc(HealthProtectedState initialState) : super(initialState) { on<HealthProtectedInitialEvent>(_onInitialize); }

_onInitialize(HealthProtectedInitialEvent event, Emitter<HealthProtectedState> emit, ) async  { emit(state.copyWith(healthProtectedModelObj: state.healthProtectedModelObj?.copyWith(healthItemList: fillHealthItemList()))); } 
List<HealthItemModel> fillHealthItemList() { return List.generate(3, (index) => HealthItemModel()); } 
 }
