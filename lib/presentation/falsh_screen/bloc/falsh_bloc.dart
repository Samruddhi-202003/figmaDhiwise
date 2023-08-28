import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/falsh_screen/models/falsh_model.dart';part 'falsh_event.dart';part 'falsh_state.dart';/// A bloc that manages the state of a Falsh according to the event that is dispatched to it.
class FalshBloc extends Bloc<FalshEvent, FalshState> {FalshBloc(FalshState initialState) : super(initialState) { on<FalshInitialEvent>(_onInitialize); }

_onInitialize(FalshInitialEvent event, Emitter<FalshState> emit, ) async  { Future.delayed(const Duration(milliseconds: 3000), (){
NavigatorService.popAndPushNamed(AppRoutes.androidLargeTenScreen, );}); } 
 }
