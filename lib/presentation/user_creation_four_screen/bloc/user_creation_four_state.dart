// ignore_for_file: must_be_immutable

part of 'user_creation_four_bloc.dart';

/// Represents the state of UserCreationFour in the application.
class UserCreationFourState extends Equatable {
  UserCreationFourState({this.userCreationFourModelObj});

  UserCreationFourModel? userCreationFourModelObj;

  @override
  List<Object?> get props => [
        userCreationFourModelObj,
      ];
  UserCreationFourState copyWith(
      {UserCreationFourModel? userCreationFourModelObj}) {
    return UserCreationFourState(
      userCreationFourModelObj:
          userCreationFourModelObj ?? this.userCreationFourModelObj,
    );
  }
}
