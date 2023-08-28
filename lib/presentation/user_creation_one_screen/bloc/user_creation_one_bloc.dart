import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/user_creation_item_model.dart';import 'package:samruddhi_s_application1/presentation/user_creation_one_screen/models/user_creation_one_model.dart';part 'user_creation_one_event.dart';part 'user_creation_one_state.dart';/// A bloc that manages the state of a UserCreationOne according to the event that is dispatched to it.
class UserCreationOneBloc extends Bloc<UserCreationOneEvent, UserCreationOneState> {UserCreationOneBloc(UserCreationOneState initialState) : super(initialState) { on<UserCreationOneInitialEvent>(_onInitialize); }

_onInitialize(UserCreationOneInitialEvent event, Emitter<UserCreationOneState> emit, ) async  { emit(state.copyWith(userCreationOneModelObj: state.userCreationOneModelObj?.copyWith(userCreationItemList: fillUserCreationItemList()))); } 
List<UserCreationItemModel> fillUserCreationItemList() { return List.generate(15, (index) => UserCreationItemModel()); } 
 }
