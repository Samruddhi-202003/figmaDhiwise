// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'monitoring_item_model.dart';/// This class defines the variables used in the [monitoring_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MonitoringModel extends Equatable {MonitoringModel({this.monitoringItemList = const []});

List<MonitoringItemModel> monitoringItemList;

MonitoringModel copyWith({List<MonitoringItemModel>? monitoringItemList}) { return MonitoringModel(
monitoringItemList : monitoringItemList ?? this.monitoringItemList,
); } 
@override List<Object?> get props => [monitoringItemList];
 }
