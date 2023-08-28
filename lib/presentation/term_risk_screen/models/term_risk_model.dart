// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'coverneededbutt1_item_model.dart';/// This class defines the variables used in the [term_risk_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TermRiskModel extends Equatable {TermRiskModel({this.coverneededbutt1ItemList = const []});

List<Coverneededbutt1ItemModel> coverneededbutt1ItemList;

TermRiskModel copyWith({List<Coverneededbutt1ItemModel>? coverneededbutt1ItemList}) { return TermRiskModel(
coverneededbutt1ItemList : coverneededbutt1ItemList ?? this.coverneededbutt1ItemList,
); } 
@override List<Object?> get props => [coverneededbutt1ItemList];
 }
