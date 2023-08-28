import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/coverneededbutt1_item_model.dart';import 'package:samruddhi_s_application1/presentation/term_risk_screen/models/term_risk_model.dart';part 'term_risk_event.dart';part 'term_risk_state.dart';/// A bloc that manages the state of a TermRisk according to the event that is dispatched to it.
class TermRiskBloc extends Bloc<TermRiskEvent, TermRiskState> {TermRiskBloc(TermRiskState initialState) : super(initialState) { on<TermRiskInitialEvent>(_onInitialize); }

_onInitialize(TermRiskInitialEvent event, Emitter<TermRiskState> emit, ) async  { emit(state.copyWith(termRiskModelObj: state.termRiskModelObj?.copyWith(coverneededbutt1ItemList: fillCoverneededbutt1ItemList()))); } 
List<Coverneededbutt1ItemModel> fillCoverneededbutt1ItemList() { return List.generate(3, (index) => Coverneededbutt1ItemModel()); } 
 }
