// ignore_for_file: must_be_immutable

part of 'error_bloc.dart';

/// Represents the state of Error in the application.
class ErrorState extends Equatable {
  ErrorState({this.errorModelObj});

  ErrorModel? errorModelObj;

  @override
  List<Object?> get props => [
        errorModelObj,
      ];
  ErrorState copyWith({ErrorModel? errorModelObj}) {
    return ErrorState(
      errorModelObj: errorModelObj ?? this.errorModelObj,
    );
  }
}
