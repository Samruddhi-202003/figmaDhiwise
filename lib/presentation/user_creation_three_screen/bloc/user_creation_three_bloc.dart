import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/gridselfemploye_item_model.dart';import 'package:samruddhi_s_application1/presentation/user_creation_three_screen/models/user_creation_three_model.dart';part 'user_creation_three_event.dart';part 'user_creation_three_state.dart';/// A bloc that manages the state of a UserCreationThree according to the event that is dispatched to it.
class UserCreationThreeBloc extends Bloc<UserCreationThreeEvent, UserCreationThreeState> {UserCreationThreeBloc(UserCreationThreeState initialState) : super(initialState) { on<UserCreationThreeInitialEvent>(_onInitialize); }

_onInitialize(UserCreationThreeInitialEvent event, Emitter<UserCreationThreeState> emit, ) async  { emit(state.copyWith(userCreationThreeModelObj: state.userCreationThreeModelObj?.copyWith(gridselfemployeItemList: fillGridselfemployeItemList()))); } 
List<GridselfemployeItemModel> fillGridselfemployeItemList() { return List.generate(15, (index) => GridselfemployeItemModel()); } 
 }
