// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'gridselfemploye_item_model.dart';/// This class defines the variables used in the [user_creation_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class UserCreationThreeModel extends Equatable {UserCreationThreeModel({this.gridselfemployeItemList = const []});

List<GridselfemployeItemModel> gridselfemployeItemList;

UserCreationThreeModel copyWith({List<GridselfemployeItemModel>? gridselfemployeItemList}) { return UserCreationThreeModel(
gridselfemployeItemList : gridselfemployeItemList ?? this.gridselfemployeItemList,
); } 
@override List<Object?> get props => [gridselfemployeItemList];
 }
