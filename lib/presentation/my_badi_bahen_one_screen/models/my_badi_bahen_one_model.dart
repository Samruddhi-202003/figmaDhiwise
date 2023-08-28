// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'my_badi_bahen_item_model.dart';/// This class defines the variables used in the [my_badi_bahen_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyBadiBahenOneModel extends Equatable {MyBadiBahenOneModel({this.myBadiBahenItemList = const []});

List<MyBadiBahenItemModel> myBadiBahenItemList;

MyBadiBahenOneModel copyWith({List<MyBadiBahenItemModel>? myBadiBahenItemList}) { return MyBadiBahenOneModel(
myBadiBahenItemList : myBadiBahenItemList ?? this.myBadiBahenItemList,
); } 
@override List<Object?> get props => [myBadiBahenItemList];
 }
