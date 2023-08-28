import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/basic_details_page/models/basic_details_model.dart';
part 'basic_details_event.dart';
part 'basic_details_state.dart';

/// A bloc that manages the state of a BasicDetails according to the event that is dispatched to it.
class BasicDetailsBloc extends Bloc<BasicDetailsEvent, BasicDetailsState> {
  BasicDetailsBloc(BasicDetailsState initialState) : super(initialState) {
    on<BasicDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BasicDetailsInitialEvent event,
    Emitter<BasicDetailsState> emit,
  ) async {}
}
