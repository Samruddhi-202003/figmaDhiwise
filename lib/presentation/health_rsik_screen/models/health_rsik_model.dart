// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'health_rsik_item_model.dart';/// This class defines the variables used in the [health_rsik_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HealthRsikModel extends Equatable {HealthRsikModel({this.healthRsikItemList = const []});

List<HealthRsikItemModel> healthRsikItemList;

HealthRsikModel copyWith({List<HealthRsikItemModel>? healthRsikItemList}) { return HealthRsikModel(
healthRsikItemList : healthRsikItemList ?? this.healthRsikItemList,
); } 
@override List<Object?> get props => [healthRsikItemList];
 }
