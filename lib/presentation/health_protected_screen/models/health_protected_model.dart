// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'health_item_model.dart';/// This class defines the variables used in the [health_protected_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HealthProtectedModel extends Equatable {HealthProtectedModel({this.healthItemList = const []});

List<HealthItemModel> healthItemList;

HealthProtectedModel copyWith({List<HealthItemModel>? healthItemList}) { return HealthProtectedModel(
healthItemList : healthItemList ?? this.healthItemList,
); } 
@override List<Object?> get props => [healthItemList];
 }
