// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'number_one_item_model.dart';/// This class defines the variables used in the [number_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class NumberOneModel extends Equatable {NumberOneModel({this.numberOneItemList = const []});

List<NumberOneItemModel> numberOneItemList;

NumberOneModel copyWith({List<NumberOneItemModel>? numberOneItemList}) { return NumberOneModel(
numberOneItemList : numberOneItemList ?? this.numberOneItemList,
); } 
@override List<Object?> get props => [numberOneItemList];
 }
