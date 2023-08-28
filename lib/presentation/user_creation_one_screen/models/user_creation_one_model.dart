// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'user_creation_item_model.dart';/// This class defines the variables used in the [user_creation_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class UserCreationOneModel extends Equatable {UserCreationOneModel({this.userCreationItemList = const []});

List<UserCreationItemModel> userCreationItemList;

UserCreationOneModel copyWith({List<UserCreationItemModel>? userCreationItemList}) { return UserCreationOneModel(
userCreationItemList : userCreationItemList ?? this.userCreationItemList,
); } 
@override List<Object?> get props => [userCreationItemList];
 }
