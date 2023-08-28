// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'term_risk_one_item_model.dart';/// This class defines the variables used in the [term_risk_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TermRiskOneModel extends Equatable {TermRiskOneModel({this.termRiskOneItemList = const []});

List<TermRiskOneItemModel> termRiskOneItemList;

TermRiskOneModel copyWith({List<TermRiskOneItemModel>? termRiskOneItemList}) { return TermRiskOneModel(
termRiskOneItemList : termRiskOneItemList ?? this.termRiskOneItemList,
); } 
@override List<Object?> get props => [termRiskOneItemList];
 }
