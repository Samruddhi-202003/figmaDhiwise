// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'my_badi_bahen2_item_model.dart';/// This class defines the variables used in the [my_badi_bahen_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyBadiBahenTwoModel extends Equatable {MyBadiBahenTwoModel({this.myBadiBahen2ItemList = const []});

List<MyBadiBahen2ItemModel> myBadiBahen2ItemList;

MyBadiBahenTwoModel copyWith({List<MyBadiBahen2ItemModel>? myBadiBahen2ItemList}) { return MyBadiBahenTwoModel(
myBadiBahen2ItemList : myBadiBahen2ItemList ?? this.myBadiBahen2ItemList,
); } 
@override List<Object?> get props => [myBadiBahen2ItemList];
 }
