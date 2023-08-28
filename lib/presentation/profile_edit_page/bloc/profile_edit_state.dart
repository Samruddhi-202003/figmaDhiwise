// ignore_for_file: must_be_immutable

part of 'profile_edit_bloc.dart';

/// Represents the state of ProfileEdit in the application.
class ProfileEditState extends Equatable {
  ProfileEditState({this.profileEditModelObj});

  ProfileEditModel? profileEditModelObj;

  @override
  List<Object?> get props => [
        profileEditModelObj,
      ];
  ProfileEditState copyWith({ProfileEditModel? profileEditModelObj}) {
    return ProfileEditState(
      profileEditModelObj: profileEditModelObj ?? this.profileEditModelObj,
    );
  }
}
