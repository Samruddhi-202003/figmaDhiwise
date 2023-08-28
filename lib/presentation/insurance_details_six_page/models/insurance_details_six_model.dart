// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'listhealth_item_model.dart';/// This class defines the variables used in the [insurance_details_six_page],
/// and is typically used to hold data that is passed between different parts of the application.
class InsuranceDetailsSixModel extends Equatable {InsuranceDetailsSixModel({this.listhealthItemList = const []});

List<ListhealthItemModel> listhealthItemList;

InsuranceDetailsSixModel copyWith({List<ListhealthItemModel>? listhealthItemList}) { return InsuranceDetailsSixModel(
listhealthItemList : listhealthItemList ?? this.listhealthItemList,
); } 
@override List<Object?> get props => [listhealthItemList];
 }
