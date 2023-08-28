import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/advisory_one_screen/models/advisory_one_model.dart';
part 'advisory_one_event.dart';
part 'advisory_one_state.dart';

/// A bloc that manages the state of a AdvisoryOne according to the event that is dispatched to it.
class AdvisoryOneBloc extends Bloc<AdvisoryOneEvent, AdvisoryOneState> {
  AdvisoryOneBloc(AdvisoryOneState initialState) : super(initialState) {
    on<AdvisoryOneInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<AdvisoryOneState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _onInitialize(
    AdvisoryOneInitialEvent event,
    Emitter<AdvisoryOneState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
  }
}
