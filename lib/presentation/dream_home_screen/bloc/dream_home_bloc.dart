import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/dream_home_screen/models/dream_home_model.dart';part 'dream_home_event.dart';part 'dream_home_state.dart';/// A bloc that manages the state of a DreamHome according to the event that is dispatched to it.
class DreamHomeBloc extends Bloc<DreamHomeEvent, DreamHomeState> {DreamHomeBloc(DreamHomeState initialState) : super(initialState) { on<DreamHomeInitialEvent>(_onInitialize); }

_onInitialize(DreamHomeInitialEvent event, Emitter<DreamHomeState> emit, ) async  {  } 
 }
