import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/login_one_screen/models/login_one_model.dart';part 'login_one_event.dart';part 'login_one_state.dart';/// A bloc that manages the state of a LoginOne according to the event that is dispatched to it.
class LoginOneBloc extends Bloc<LoginOneEvent, LoginOneState> {LoginOneBloc(LoginOneState initialState) : super(initialState) { on<LoginOneInitialEvent>(_onInitialize); }

_onInitialize(LoginOneInitialEvent event, Emitter<LoginOneState> emit, ) async  {  } 
 }
