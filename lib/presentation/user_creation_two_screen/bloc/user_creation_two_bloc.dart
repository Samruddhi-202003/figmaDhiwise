import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/user_creation1_item_model.dart';import 'package:samruddhi_s_application1/presentation/user_creation_two_screen/models/user_creation_two_model.dart';part 'user_creation_two_event.dart';part 'user_creation_two_state.dart';/// A bloc that manages the state of a UserCreationTwo according to the event that is dispatched to it.
class UserCreationTwoBloc extends Bloc<UserCreationTwoEvent, UserCreationTwoState> {UserCreationTwoBloc(UserCreationTwoState initialState) : super(initialState) { on<UserCreationTwoInitialEvent>(_onInitialize); }

_onInitialize(UserCreationTwoInitialEvent event, Emitter<UserCreationTwoState> emit, ) async  { emit(state.copyWith(userCreationTwoModelObj: state.userCreationTwoModelObj?.copyWith(userCreation1ItemList: fillUserCreation1ItemList()))); } 
List<UserCreation1ItemModel> fillUserCreation1ItemList() { return List.generate(15, (index) => UserCreation1ItemModel()); } 
 }
