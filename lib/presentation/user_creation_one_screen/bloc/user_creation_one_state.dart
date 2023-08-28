// ignore_for_file: must_be_immutable

part of 'user_creation_one_bloc.dart';

/// Represents the state of UserCreationOne in the application.
class UserCreationOneState extends Equatable {
  UserCreationOneState({this.userCreationOneModelObj});

  UserCreationOneModel? userCreationOneModelObj;

  @override
  List<Object?> get props => [
        userCreationOneModelObj,
      ];
  UserCreationOneState copyWith(
      {UserCreationOneModel? userCreationOneModelObj}) {
    return UserCreationOneState(
      userCreationOneModelObj:
          userCreationOneModelObj ?? this.userCreationOneModelObj,
    );
  }
}
