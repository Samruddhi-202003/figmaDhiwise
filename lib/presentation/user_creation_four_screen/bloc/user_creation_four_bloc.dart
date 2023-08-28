import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/grid_item_model.dart';import 'package:samruddhi_s_application1/presentation/user_creation_four_screen/models/user_creation_four_model.dart';part 'user_creation_four_event.dart';part 'user_creation_four_state.dart';/// A bloc that manages the state of a UserCreationFour according to the event that is dispatched to it.
class UserCreationFourBloc extends Bloc<UserCreationFourEvent, UserCreationFourState> {UserCreationFourBloc(UserCreationFourState initialState) : super(initialState) { on<UserCreationFourInitialEvent>(_onInitialize); }

_onInitialize(UserCreationFourInitialEvent event, Emitter<UserCreationFourState> emit, ) async  { emit(state.copyWith(userCreationFourModelObj: state.userCreationFourModelObj?.copyWith(gridItemList: fillGridItemList()))); } 
List<GridItemModel> fillGridItemList() { return List.generate(15, (index) => GridItemModel()); } 
 }
