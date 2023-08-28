// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'coverneededbutt_item_model.dart';/// This class defines the variables used in the [android_large_sixteen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AndroidLargeSixteenModel extends Equatable {AndroidLargeSixteenModel({this.coverneededbuttItemList = const []});

List<CoverneededbuttItemModel> coverneededbuttItemList;

AndroidLargeSixteenModel copyWith({List<CoverneededbuttItemModel>? coverneededbuttItemList}) { return AndroidLargeSixteenModel(
coverneededbuttItemList : coverneededbuttItemList ?? this.coverneededbuttItemList,
); } 
@override List<Object?> get props => [coverneededbuttItemList];
 }
