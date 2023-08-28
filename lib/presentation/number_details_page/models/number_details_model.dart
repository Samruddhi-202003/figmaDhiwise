// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'number_details_item_model.dart';/// This class defines the variables used in the [number_details_page],
/// and is typically used to hold data that is passed between different parts of the application.
class NumberDetailsModel extends Equatable {NumberDetailsModel({this.numberDetailsItemList = const []});

List<NumberDetailsItemModel> numberDetailsItemList;

NumberDetailsModel copyWith({List<NumberDetailsItemModel>? numberDetailsItemList}) { return NumberDetailsModel(
numberDetailsItemList : numberDetailsItemList ?? this.numberDetailsItemList,
); } 
@override List<Object?> get props => [numberDetailsItemList];
 }
