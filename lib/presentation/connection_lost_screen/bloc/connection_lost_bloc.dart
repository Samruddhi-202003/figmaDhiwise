import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/connection_lost_screen/models/connection_lost_model.dart';
part 'connection_lost_event.dart';
part 'connection_lost_state.dart';

/// A bloc that manages the state of a ConnectionLost according to the event that is dispatched to it.
class ConnectionLostBloc
    extends Bloc<ConnectionLostEvent, ConnectionLostState> {
  ConnectionLostBloc(ConnectionLostState initialState) : super(initialState) {
    on<ConnectionLostInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ConnectionLostInitialEvent event,
    Emitter<ConnectionLostState> emit,
  ) async {}
}
