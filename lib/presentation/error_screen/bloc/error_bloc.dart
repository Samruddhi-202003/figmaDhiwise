import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/error_screen/models/error_model.dart';
part 'error_event.dart';
part 'error_state.dart';

/// A bloc that manages the state of a Error according to the event that is dispatched to it.
class ErrorBloc extends Bloc<ErrorEvent, ErrorState> {
  ErrorBloc(ErrorState initialState) : super(initialState) {
    on<ErrorInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ErrorInitialEvent event,
    Emitter<ErrorState> emit,
  ) async {}
}
