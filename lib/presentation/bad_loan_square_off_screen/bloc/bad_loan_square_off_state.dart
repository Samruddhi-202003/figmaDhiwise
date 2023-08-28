// ignore_for_file: must_be_immutable

part of 'bad_loan_square_off_bloc.dart';

/// Represents the state of BadLoanSquareOff in the application.
class BadLoanSquareOffState extends Equatable {
  BadLoanSquareOffState({
    this.isSelectedSwitch = false,
    this.badLoanSquareOffModelObj,
  });

  BadLoanSquareOffModel? badLoanSquareOffModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        badLoanSquareOffModelObj,
      ];
  BadLoanSquareOffState copyWith({
    bool? isSelectedSwitch,
    BadLoanSquareOffModel? badLoanSquareOffModelObj,
  }) {
    return BadLoanSquareOffState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      badLoanSquareOffModelObj:
          badLoanSquareOffModelObj ?? this.badLoanSquareOffModelObj,
    );
  }
}
