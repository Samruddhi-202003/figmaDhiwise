import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/term_risk_one_item_model.dart';
import 'package:samruddhi_s_application1/presentation/term_risk_one_screen/models/term_risk_one_model.dart';
part 'term_risk_one_event.dart';
part 'term_risk_one_state.dart';

/// A bloc that manages the state of a TermRiskOne according to the event that is dispatched to it.
class TermRiskOneBloc extends Bloc<TermRiskOneEvent, TermRiskOneState> {
  TermRiskOneBloc(TermRiskOneState initialState) : super(initialState) {
    on<TermRiskOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TermRiskOneInitialEvent event,
    Emitter<TermRiskOneState> emit,
  ) async {
    emit(state.copyWith(
        termRiskOneModelObj: state.termRiskOneModelObj?.copyWith(
      termRiskOneItemList: fillTermRiskOneItemList(),
    )));
  }

  List<TermRiskOneItemModel> fillTermRiskOneItemList() {
    return List.generate(3, (index) => TermRiskOneItemModel());
  }
}
