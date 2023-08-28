import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/disclaimer_screen/models/disclaimer_model.dart';part 'disclaimer_event.dart';part 'disclaimer_state.dart';/// A bloc that manages the state of a Disclaimer according to the event that is dispatched to it.
class DisclaimerBloc extends Bloc<DisclaimerEvent, DisclaimerState> {DisclaimerBloc(DisclaimerState initialState) : super(initialState) { on<DisclaimerInitialEvent>(_onInitialize); }

_onInitialize(DisclaimerInitialEvent event, Emitter<DisclaimerState> emit, ) async  {  } 
 }
