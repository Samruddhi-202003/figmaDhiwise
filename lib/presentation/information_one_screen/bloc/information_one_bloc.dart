import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/information_one_screen/models/information_one_model.dart';
part 'information_one_event.dart';
part 'information_one_state.dart';

/// A bloc that manages the state of a InformationOne according to the event that is dispatched to it.
class InformationOneBloc
    extends Bloc<InformationOneEvent, InformationOneState> {
  InformationOneBloc(InformationOneState initialState) : super(initialState) {
    on<InformationOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InformationOneInitialEvent event,
    Emitter<InformationOneState> emit,
  ) async {}
}
