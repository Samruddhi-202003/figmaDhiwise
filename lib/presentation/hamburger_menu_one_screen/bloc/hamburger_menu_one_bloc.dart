import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/hamburger_menu1_item_model.dart';import 'package:samruddhi_s_application1/presentation/hamburger_menu_one_screen/models/hamburger_menu_one_model.dart';part 'hamburger_menu_one_event.dart';part 'hamburger_menu_one_state.dart';/// A bloc that manages the state of a HamburgerMenuOne according to the event that is dispatched to it.
class HamburgerMenuOneBloc extends Bloc<HamburgerMenuOneEvent, HamburgerMenuOneState> {HamburgerMenuOneBloc(HamburgerMenuOneState initialState) : super(initialState) { on<HamburgerMenuOneInitialEvent>(_onInitialize); }

_onInitialize(HamburgerMenuOneInitialEvent event, Emitter<HamburgerMenuOneState> emit, ) async  { emit(state.copyWith(hamburgerMenuOneModelObj: state.hamburgerMenuOneModelObj?.copyWith(hamburgerMenu1ItemList: fillHamburgerMenu1ItemList()))); } 
List<HamburgerMenu1ItemModel> fillHamburgerMenu1ItemList() { return List.generate(7, (index) => HamburgerMenu1ItemModel()); } 
 }
