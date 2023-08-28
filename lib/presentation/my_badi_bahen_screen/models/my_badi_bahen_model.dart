// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'my_badi_bahen1_item_model.dart';/// This class defines the variables used in the [my_badi_bahen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyBadiBahenModel extends Equatable {MyBadiBahenModel({this.myBadiBahen1ItemList = const []});

List<MyBadiBahen1ItemModel> myBadiBahen1ItemList;

MyBadiBahenModel copyWith({List<MyBadiBahen1ItemModel>? myBadiBahen1ItemList}) { return MyBadiBahenModel(
myBadiBahen1ItemList : myBadiBahen1ItemList ?? this.myBadiBahen1ItemList,
); } 
@override List<Object?> get props => [myBadiBahen1ItemList];
 }
