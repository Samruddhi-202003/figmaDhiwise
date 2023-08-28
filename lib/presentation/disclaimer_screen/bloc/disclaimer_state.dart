// ignore_for_file: must_be_immutable

part of 'disclaimer_bloc.dart';

/// Represents the state of Disclaimer in the application.
class DisclaimerState extends Equatable {
  DisclaimerState({this.disclaimerModelObj});

  DisclaimerModel? disclaimerModelObj;

  @override
  List<Object?> get props => [
        disclaimerModelObj,
      ];
  DisclaimerState copyWith({DisclaimerModel? disclaimerModelObj}) {
    return DisclaimerState(
      disclaimerModelObj: disclaimerModelObj ?? this.disclaimerModelObj,
    );
  }
}
