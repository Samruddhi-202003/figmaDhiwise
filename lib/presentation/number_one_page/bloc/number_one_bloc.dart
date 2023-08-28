import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/number_one_item_model.dart';
import 'package:samruddhi_s_application1/presentation/number_one_page/models/number_one_model.dart';
part 'number_one_event.dart';
part 'number_one_state.dart';

/// A bloc that manages the state of a NumberOne according to the event that is dispatched to it.
class NumberOneBloc extends Bloc<NumberOneEvent, NumberOneState> {
  NumberOneBloc(NumberOneState initialState) : super(initialState) {
    on<NumberOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NumberOneInitialEvent event,
    Emitter<NumberOneState> emit,
  ) async {
    emit(state.copyWith(
        numberOneModelObj: state.numberOneModelObj?.copyWith(
      numberOneItemList: fillNumberOneItemList(),
    )));
  }

  List<NumberOneItemModel> fillNumberOneItemList() {
    return List.generate(8, (index) => NumberOneItemModel());
  }
}
