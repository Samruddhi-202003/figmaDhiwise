// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'advisory_item_model.dart';/// This class defines the variables used in the [advisory_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AdvisoryModel extends Equatable {AdvisoryModel({this.advisoryItemList = const []});

List<AdvisoryItemModel> advisoryItemList;

AdvisoryModel copyWith({List<AdvisoryItemModel>? advisoryItemList}) { return AdvisoryModel(
advisoryItemList : advisoryItemList ?? this.advisoryItemList,
); } 
@override List<Object?> get props => [advisoryItemList];
 }
