import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/with_surrender_item_model.dart';import 'package:samruddhi_s_application1/presentation/with_surrender_page/models/with_surrender_model.dart';part 'with_surrender_event.dart';part 'with_surrender_state.dart';/// A bloc that manages the state of a WithSurrender according to the event that is dispatched to it.
class WithSurrenderBloc extends Bloc<WithSurrenderEvent, WithSurrenderState> {WithSurrenderBloc(WithSurrenderState initialState) : super(initialState) { on<WithSurrenderInitialEvent>(_onInitialize); }

_onInitialize(WithSurrenderInitialEvent event, Emitter<WithSurrenderState> emit, ) async  { emit(state.copyWith(withSurrenderModelObj: state.withSurrenderModelObj?.copyWith(withSurrenderItemList: fillWithSurrenderItemList()))); } 
List<WithSurrenderItemModel> fillWithSurrenderItemList() { return List.generate(4, (index) => WithSurrenderItemModel()); } 
 }
