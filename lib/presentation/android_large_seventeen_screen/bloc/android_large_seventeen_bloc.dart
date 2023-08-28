import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/android_large_seventeen_screen/models/android_large_seventeen_model.dart';part 'android_large_seventeen_event.dart';part 'android_large_seventeen_state.dart';/// A bloc that manages the state of a AndroidLargeSeventeen according to the event that is dispatched to it.
class AndroidLargeSeventeenBloc extends Bloc<AndroidLargeSeventeenEvent, AndroidLargeSeventeenState> {AndroidLargeSeventeenBloc(AndroidLargeSeventeenState initialState) : super(initialState) { on<AndroidLargeSeventeenInitialEvent>(_onInitialize); }

_onInitialize(AndroidLargeSeventeenInitialEvent event, Emitter<AndroidLargeSeventeenState> emit, ) async  { emit(state.copyWith(calendaroneController: TextEditingController(), calendaroneController1: TextEditingController())); } 
 }
