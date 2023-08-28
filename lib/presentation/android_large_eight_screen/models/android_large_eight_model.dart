// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'listcoverneeded_item_model.dart';/// This class defines the variables used in the [android_large_eight_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AndroidLargeEightModel extends Equatable {AndroidLargeEightModel({this.listcoverneededItemList = const []});

List<ListcoverneededItemModel> listcoverneededItemList;

AndroidLargeEightModel copyWith({List<ListcoverneededItemModel>? listcoverneededItemList}) { return AndroidLargeEightModel(
listcoverneededItemList : listcoverneededItemList ?? this.listcoverneededItemList,
); } 
@override List<Object?> get props => [listcoverneededItemList];
 }
