import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/my_badi_bahen1_item_model.dart';import 'package:samruddhi_s_application1/presentation/my_badi_bahen_screen/models/my_badi_bahen_model.dart';part 'my_badi_bahen_event.dart';part 'my_badi_bahen_state.dart';/// A bloc that manages the state of a MyBadiBahen according to the event that is dispatched to it.
class MyBadiBahenBloc extends Bloc<MyBadiBahenEvent, MyBadiBahenState> {MyBadiBahenBloc(MyBadiBahenState initialState) : super(initialState) { on<MyBadiBahenInitialEvent>(_onInitialize); }

List<MyBadiBahen1ItemModel> fillMyBadiBahen1ItemList() { return List.generate(3, (index) => MyBadiBahen1ItemModel()); } 
_onInitialize(MyBadiBahenInitialEvent event, Emitter<MyBadiBahenState> emit, ) async  { emit(state.copyWith(rs300027Controller: TextEditingController())); emit(state.copyWith(myBadiBahenModelObj: state.myBadiBahenModelObj?.copyWith(myBadiBahen1ItemList: fillMyBadiBahen1ItemList()))); } 
 }
