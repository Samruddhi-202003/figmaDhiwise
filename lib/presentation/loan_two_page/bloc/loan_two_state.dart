// ignore_for_file: must_be_immutable

part of 'loan_two_bloc.dart';

/// Represents the state of LoanTwo in the application.
class LoanTwoState extends Equatable {
  LoanTwoState({this.loanTwoModelObj});

  LoanTwoModel? loanTwoModelObj;

  @override
  List<Object?> get props => [
        loanTwoModelObj,
      ];
  LoanTwoState copyWith({LoanTwoModel? loanTwoModelObj}) {
    return LoanTwoState(
      loanTwoModelObj: loanTwoModelObj ?? this.loanTwoModelObj,
    );
  }
}
