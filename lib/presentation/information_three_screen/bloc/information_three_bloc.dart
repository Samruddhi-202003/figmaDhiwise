import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/information_three_screen/models/information_three_model.dart';
part 'information_three_event.dart';
part 'information_three_state.dart';

/// A bloc that manages the state of a InformationThree according to the event that is dispatched to it.
class InformationThreeBloc
    extends Bloc<InformationThreeEvent, InformationThreeState> {
  InformationThreeBloc(InformationThreeState initialState)
      : super(initialState) {
    on<InformationThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InformationThreeInitialEvent event,
    Emitter<InformationThreeState> emit,
  ) async {}
}
