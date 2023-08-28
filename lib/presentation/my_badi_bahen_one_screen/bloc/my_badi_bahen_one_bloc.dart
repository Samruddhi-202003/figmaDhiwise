import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/my_badi_bahen_item_model.dart';import 'package:samruddhi_s_application1/presentation/my_badi_bahen_one_screen/models/my_badi_bahen_one_model.dart';part 'my_badi_bahen_one_event.dart';part 'my_badi_bahen_one_state.dart';/// A bloc that manages the state of a MyBadiBahenOne according to the event that is dispatched to it.
class MyBadiBahenOneBloc extends Bloc<MyBadiBahenOneEvent, MyBadiBahenOneState> {MyBadiBahenOneBloc(MyBadiBahenOneState initialState) : super(initialState) { on<MyBadiBahenOneInitialEvent>(_onInitialize); }

List<MyBadiBahenItemModel> fillMyBadiBahenItemList() { return List.generate(3, (index) => MyBadiBahenItemModel()); } 
_onInitialize(MyBadiBahenOneInitialEvent event, Emitter<MyBadiBahenOneState> emit, ) async  { emit(state.copyWith(rs300027Controller: TextEditingController())); emit(state.copyWith(myBadiBahenOneModelObj: state.myBadiBahenOneModelObj?.copyWith(myBadiBahenItemList: fillMyBadiBahenItemList()))); } 
 }
