// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'hamburger_menu_item_model.dart';/// This class defines the variables used in the [hamburger_menu_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HamburgerMenuModel extends Equatable {HamburgerMenuModel({this.hamburgerMenuItemList = const []});

List<HamburgerMenuItemModel> hamburgerMenuItemList;

HamburgerMenuModel copyWith({List<HamburgerMenuItemModel>? hamburgerMenuItemList}) { return HamburgerMenuModel(
hamburgerMenuItemList : hamburgerMenuItemList ?? this.hamburgerMenuItemList,
); } 
@override List<Object?> get props => [hamburgerMenuItemList];
 }
