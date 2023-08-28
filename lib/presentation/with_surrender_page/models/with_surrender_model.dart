// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'with_surrender_item_model.dart';/// This class defines the variables used in the [with_surrender_page],
/// and is typically used to hold data that is passed between different parts of the application.
class WithSurrenderModel extends Equatable {WithSurrenderModel({this.withSurrenderItemList = const []});

List<WithSurrenderItemModel> withSurrenderItemList;

WithSurrenderModel copyWith({List<WithSurrenderItemModel>? withSurrenderItemList}) { return WithSurrenderModel(
withSurrenderItemList : withSurrenderItemList ?? this.withSurrenderItemList,
); } 
@override List<Object?> get props => [withSurrenderItemList];
 }
