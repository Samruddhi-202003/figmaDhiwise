import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/with_surrender_container_screen/models/with_surrender_container_model.dart';part 'with_surrender_container_event.dart';part 'with_surrender_container_state.dart';/// A bloc that manages the state of a WithSurrenderContainer according to the event that is dispatched to it.
class WithSurrenderContainerBloc extends Bloc<WithSurrenderContainerEvent, WithSurrenderContainerState> {WithSurrenderContainerBloc(WithSurrenderContainerState initialState) : super(initialState) { on<WithSurrenderContainerInitialEvent>(_onInitialize); }

_onInitialize(WithSurrenderContainerInitialEvent event, Emitter<WithSurrenderContainerState> emit, ) async  {  } 
 }
