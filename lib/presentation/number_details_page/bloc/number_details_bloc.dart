import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/number_details_item_model.dart';import 'package:samruddhi_s_application1/presentation/number_details_page/models/number_details_model.dart';part 'number_details_event.dart';part 'number_details_state.dart';/// A bloc that manages the state of a NumberDetails according to the event that is dispatched to it.
class NumberDetailsBloc extends Bloc<NumberDetailsEvent, NumberDetailsState> {NumberDetailsBloc(NumberDetailsState initialState) : super(initialState) { on<NumberDetailsInitialEvent>(_onInitialize); }

_onInitialize(NumberDetailsInitialEvent event, Emitter<NumberDetailsState> emit, ) async  { emit(state.copyWith(numberDetailsModelObj: state.numberDetailsModelObj?.copyWith(numberDetailsItemList: fillNumberDetailsItemList()))); } 
List<NumberDetailsItemModel> fillNumberDetailsItemList() { return List.generate(16, (index) => NumberDetailsItemModel()); } 
 }
