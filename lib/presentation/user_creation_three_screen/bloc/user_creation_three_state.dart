// ignore_for_file: must_be_immutable

part of 'user_creation_three_bloc.dart';

/// Represents the state of UserCreationThree in the application.
class UserCreationThreeState extends Equatable {
  UserCreationThreeState({this.userCreationThreeModelObj});

  UserCreationThreeModel? userCreationThreeModelObj;

  @override
  List<Object?> get props => [
        userCreationThreeModelObj,
      ];
  UserCreationThreeState copyWith(
      {UserCreationThreeModel? userCreationThreeModelObj}) {
    return UserCreationThreeState(
      userCreationThreeModelObj:
          userCreationThreeModelObj ?? this.userCreationThreeModelObj,
    );
  }
}
