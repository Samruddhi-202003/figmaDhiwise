import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/term_protected_item_model.dart';
import 'package:samruddhi_s_application1/presentation/term_protected_screen/models/term_protected_model.dart';
part 'term_protected_event.dart';
part 'term_protected_state.dart';

/// A bloc that manages the state of a TermProtected according to the event that is dispatched to it.
class TermProtectedBloc extends Bloc<TermProtectedEvent, TermProtectedState> {
  TermProtectedBloc(TermProtectedState initialState) : super(initialState) {
    on<TermProtectedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TermProtectedInitialEvent event,
    Emitter<TermProtectedState> emit,
  ) async {
    emit(state.copyWith(
        termProtectedModelObj: state.termProtectedModelObj?.copyWith(
      termProtectedItemList: fillTermProtectedItemList(),
    )));
  }

  List<TermProtectedItemModel> fillTermProtectedItemList() {
    return List.generate(3, (index) => TermProtectedItemModel());
  }
}
