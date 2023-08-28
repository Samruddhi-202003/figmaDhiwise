import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/error_one_screen/models/error_one_model.dart';
part 'error_one_event.dart';
part 'error_one_state.dart';

/// A bloc that manages the state of a ErrorOne according to the event that is dispatched to it.
class ErrorOneBloc extends Bloc<ErrorOneEvent, ErrorOneState> {
  ErrorOneBloc(ErrorOneState initialState) : super(initialState) {
    on<ErrorOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ErrorOneInitialEvent event,
    Emitter<ErrorOneState> emit,
  ) async {}
}
