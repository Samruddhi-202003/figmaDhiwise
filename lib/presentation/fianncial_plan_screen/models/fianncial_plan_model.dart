// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'fianncial_plan_item_model.dart';import 'fianncial_plan1_item_model.dart';/// This class defines the variables used in the [fianncial_plan_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FianncialPlanModel extends Equatable {FianncialPlanModel({this.fianncialPlanItemList = const [], this.fianncialPlan1ItemList = const [], });

List<FianncialPlanItemModel> fianncialPlanItemList;

List<FianncialPlan1ItemModel> fianncialPlan1ItemList;

FianncialPlanModel copyWith({List<FianncialPlanItemModel>? fianncialPlanItemList, List<FianncialPlan1ItemModel>? fianncialPlan1ItemList, }) { return FianncialPlanModel(
fianncialPlanItemList : fianncialPlanItemList ?? this.fianncialPlanItemList,
fianncialPlan1ItemList : fianncialPlan1ItemList ?? this.fianncialPlan1ItemList,
); } 
@override List<Object?> get props => [fianncialPlanItemList,fianncialPlan1ItemList];
 }
