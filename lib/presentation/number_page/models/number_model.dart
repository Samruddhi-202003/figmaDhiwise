// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'number_item_model.dart';/// This class defines the variables used in the [number_page],
/// and is typically used to hold data that is passed between different parts of the application.
class NumberModel extends Equatable {NumberModel({this.numberItemList = const []});

List<NumberItemModel> numberItemList;

NumberModel copyWith({List<NumberItemModel>? numberItemList}) { return NumberModel(
numberItemList : numberItemList ?? this.numberItemList,
); } 
@override List<Object?> get props => [numberItemList];
 }
