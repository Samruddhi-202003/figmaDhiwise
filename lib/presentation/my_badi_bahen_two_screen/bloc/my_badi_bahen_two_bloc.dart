import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/my_badi_bahen2_item_model.dart';import 'package:samruddhi_s_application1/presentation/my_badi_bahen_two_screen/models/my_badi_bahen_two_model.dart';part 'my_badi_bahen_two_event.dart';part 'my_badi_bahen_two_state.dart';/// A bloc that manages the state of a MyBadiBahenTwo according to the event that is dispatched to it.
class MyBadiBahenTwoBloc extends Bloc<MyBadiBahenTwoEvent, MyBadiBahenTwoState> {MyBadiBahenTwoBloc(MyBadiBahenTwoState initialState) : super(initialState) { on<MyBadiBahenTwoInitialEvent>(_onInitialize); }

List<MyBadiBahen2ItemModel> fillMyBadiBahen2ItemList() { return List.generate(3, (index) => MyBadiBahen2ItemModel()); } 
_onInitialize(MyBadiBahenTwoInitialEvent event, Emitter<MyBadiBahenTwoState> emit, ) async  { emit(state.copyWith(rs300027Controller: TextEditingController())); emit(state.copyWith(myBadiBahenTwoModelObj: state.myBadiBahenTwoModelObj?.copyWith(myBadiBahen2ItemList: fillMyBadiBahen2ItemList()))); } 
 }
