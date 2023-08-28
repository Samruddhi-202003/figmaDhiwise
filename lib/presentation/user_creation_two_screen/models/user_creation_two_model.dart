// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'user_creation1_item_model.dart';/// This class defines the variables used in the [user_creation_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class UserCreationTwoModel extends Equatable {UserCreationTwoModel({this.userCreation1ItemList = const []});

List<UserCreation1ItemModel> userCreation1ItemList;

UserCreationTwoModel copyWith({List<UserCreation1ItemModel>? userCreation1ItemList}) { return UserCreationTwoModel(
userCreation1ItemList : userCreation1ItemList ?? this.userCreation1ItemList,
); } 
@override List<Object?> get props => [userCreation1ItemList];
 }
