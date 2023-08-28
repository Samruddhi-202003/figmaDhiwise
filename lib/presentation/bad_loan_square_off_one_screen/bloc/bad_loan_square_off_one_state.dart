// ignore_for_file: must_be_immutable

part of 'bad_loan_square_off_one_bloc.dart';

/// Represents the state of BadLoanSquareOffOne in the application.
class BadLoanSquareOffOneState extends Equatable {
  BadLoanSquareOffOneState({
    this.isSelectedSwitch = false,
    this.badLoanSquareOffOneModelObj,
  });

  BadLoanSquareOffOneModel? badLoanSquareOffOneModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        badLoanSquareOffOneModelObj,
      ];
  BadLoanSquareOffOneState copyWith({
    bool? isSelectedSwitch,
    BadLoanSquareOffOneModel? badLoanSquareOffOneModelObj,
  }) {
    return BadLoanSquareOffOneState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      badLoanSquareOffOneModelObj:
          badLoanSquareOffOneModelObj ?? this.badLoanSquareOffOneModelObj,
    );
  }
}
