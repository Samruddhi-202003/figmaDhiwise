import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/number_item_model.dart';
import 'package:samruddhi_s_application1/presentation/number_page/models/number_model.dart';
part 'number_event.dart';
part 'number_state.dart';

/// A bloc that manages the state of a Number according to the event that is dispatched to it.
class NumberBloc extends Bloc<NumberEvent, NumberState> {
  NumberBloc(NumberState initialState) : super(initialState) {
    on<NumberInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NumberInitialEvent event,
    Emitter<NumberState> emit,
  ) async {
    emit(state.copyWith(
        numberModelObj: state.numberModelObj?.copyWith(
      numberItemList: fillNumberItemList(),
    )));
  }

  List<NumberItemModel> fillNumberItemList() {
    return List.generate(8, (index) => NumberItemModel());
  }
}
