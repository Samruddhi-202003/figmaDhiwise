import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/confidentiality_screen/models/confidentiality_model.dart';
part 'confidentiality_event.dart';
part 'confidentiality_state.dart';

/// A bloc that manages the state of a Confidentiality according to the event that is dispatched to it.
class ConfidentialityBloc
    extends Bloc<ConfidentialityEvent, ConfidentialityState> {
  ConfidentialityBloc(ConfidentialityState initialState) : super(initialState) {
    on<ConfidentialityInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ConfidentialityInitialEvent event,
    Emitter<ConfidentialityState> emit,
  ) async {}
}
