// ignore_for_file: must_be_immutable

part of 'login_one_bloc.dart';

/// Represents the state of LoginOne in the application.
class LoginOneState extends Equatable {
  LoginOneState({this.loginOneModelObj});

  LoginOneModel? loginOneModelObj;

  @override
  List<Object?> get props => [
        loginOneModelObj,
      ];
  LoginOneState copyWith({LoginOneModel? loginOneModelObj}) {
    return LoginOneState(
      loginOneModelObj: loginOneModelObj ?? this.loginOneModelObj,
    );
  }
}
