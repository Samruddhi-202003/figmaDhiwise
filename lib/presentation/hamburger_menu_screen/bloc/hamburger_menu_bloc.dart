import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/hamburger_menu_item_model.dart';import 'package:samruddhi_s_application1/presentation/hamburger_menu_screen/models/hamburger_menu_model.dart';part 'hamburger_menu_event.dart';part 'hamburger_menu_state.dart';/// A bloc that manages the state of a HamburgerMenu according to the event that is dispatched to it.
class HamburgerMenuBloc extends Bloc<HamburgerMenuEvent, HamburgerMenuState> {HamburgerMenuBloc(HamburgerMenuState initialState) : super(initialState) { on<HamburgerMenuInitialEvent>(_onInitialize); }

_onInitialize(HamburgerMenuInitialEvent event, Emitter<HamburgerMenuState> emit, ) async  { emit(state.copyWith(hamburgerMenuModelObj: state.hamburgerMenuModelObj?.copyWith(hamburgerMenuItemList: fillHamburgerMenuItemList()))); } 
List<HamburgerMenuItemModel> fillHamburgerMenuItemList() { return List.generate(10, (index) => HamburgerMenuItemModel()); } 
 }
