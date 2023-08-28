// ignore_for_file: must_be_immutable

part of 'error_one_bloc.dart';

/// Represents the state of ErrorOne in the application.
class ErrorOneState extends Equatable {
  ErrorOneState({this.errorOneModelObj});

  ErrorOneModel? errorOneModelObj;

  @override
  List<Object?> get props => [
        errorOneModelObj,
      ];
  ErrorOneState copyWith({ErrorOneModel? errorOneModelObj}) {
    return ErrorOneState(
      errorOneModelObj: errorOneModelObj ?? this.errorOneModelObj,
    );
  }
}
