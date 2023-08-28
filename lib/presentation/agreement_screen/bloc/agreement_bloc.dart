import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/agreement_screen/models/agreement_model.dart';
part 'agreement_event.dart';
part 'agreement_state.dart';

/// A bloc that manages the state of a Agreement according to the event that is dispatched to it.
class AgreementBloc extends Bloc<AgreementEvent, AgreementState> {
  AgreementBloc(AgreementState initialState) : super(initialState) {
    on<AgreementInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AgreementInitialEvent event,
    Emitter<AgreementState> emit,
  ) async {}
}
