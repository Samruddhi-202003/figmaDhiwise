import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/information_two_screen/models/information_two_model.dart';
part 'information_two_event.dart';
part 'information_two_state.dart';

/// A bloc that manages the state of a InformationTwo according to the event that is dispatched to it.
class InformationTwoBloc
    extends Bloc<InformationTwoEvent, InformationTwoState> {
  InformationTwoBloc(InformationTwoState initialState) : super(initialState) {
    on<InformationTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InformationTwoInitialEvent event,
    Emitter<InformationTwoState> emit,
  ) async {}
}
