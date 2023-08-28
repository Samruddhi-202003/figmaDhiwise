// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'hamburger_menu1_item_model.dart';/// This class defines the variables used in the [hamburger_menu_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HamburgerMenuOneModel extends Equatable {HamburgerMenuOneModel({this.hamburgerMenu1ItemList = const []});

List<HamburgerMenu1ItemModel> hamburgerMenu1ItemList;

HamburgerMenuOneModel copyWith({List<HamburgerMenu1ItemModel>? hamburgerMenu1ItemList}) { return HamburgerMenuOneModel(
hamburgerMenu1ItemList : hamburgerMenu1ItemList ?? this.hamburgerMenu1ItemList,
); } 
@override List<Object?> get props => [hamburgerMenu1ItemList];
 }
