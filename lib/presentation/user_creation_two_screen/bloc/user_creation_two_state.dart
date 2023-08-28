// ignore_for_file: must_be_immutable

part of 'user_creation_two_bloc.dart';

/// Represents the state of UserCreationTwo in the application.
class UserCreationTwoState extends Equatable {
  UserCreationTwoState({this.userCreationTwoModelObj});

  UserCreationTwoModel? userCreationTwoModelObj;

  @override
  List<Object?> get props => [
        userCreationTwoModelObj,
      ];
  UserCreationTwoState copyWith(
      {UserCreationTwoModel? userCreationTwoModelObj}) {
    return UserCreationTwoState(
      userCreationTwoModelObj:
          userCreationTwoModelObj ?? this.userCreationTwoModelObj,
    );
  }
}
