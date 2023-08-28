import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/without_surrender_screen/models/without_surrender_model.dart';part 'without_surrender_event.dart';part 'without_surrender_state.dart';/// A bloc that manages the state of a WithoutSurrender according to the event that is dispatched to it.
class WithoutSurrenderBloc extends Bloc<WithoutSurrenderEvent, WithoutSurrenderState> {WithoutSurrenderBloc(WithoutSurrenderState initialState) : super(initialState) { on<WithoutSurrenderInitialEvent>(_onInitialize); }

_onInitialize(WithoutSurrenderInitialEvent event, Emitter<WithoutSurrenderState> emit, ) async  { emit(state.copyWith(group1089Controller: TextEditingController(), savingratioController: TextEditingController())); } 
 }
