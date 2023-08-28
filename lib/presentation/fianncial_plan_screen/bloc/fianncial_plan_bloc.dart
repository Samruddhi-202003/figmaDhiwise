import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/fianncial_plan_item_model.dart';import '../models/fianncial_plan1_item_model.dart';import 'package:samruddhi_s_application1/presentation/fianncial_plan_screen/models/fianncial_plan_model.dart';part 'fianncial_plan_event.dart';part 'fianncial_plan_state.dart';/// A bloc that manages the state of a FianncialPlan according to the event that is dispatched to it.
class FianncialPlanBloc extends Bloc<FianncialPlanEvent, FianncialPlanState> {FianncialPlanBloc(FianncialPlanState initialState) : super(initialState) { on<FianncialPlanInitialEvent>(_onInitialize); }

_onInitialize(FianncialPlanInitialEvent event, Emitter<FianncialPlanState> emit, ) async  { emit(state.copyWith(fianncialPlanModelObj: state.fianncialPlanModelObj?.copyWith(fianncialPlanItemList: fillFianncialPlanItemList(), fianncialPlan1ItemList: fillFianncialPlan1ItemList()))); } 
List<FianncialPlanItemModel> fillFianncialPlanItemList() { return List.generate(3, (index) => FianncialPlanItemModel()); } 
List<FianncialPlan1ItemModel> fillFianncialPlan1ItemList() { return List.generate(6, (index) => FianncialPlan1ItemModel()); } 
 }
