// ignore_for_file: must_be_immutable

part of 'loan_two1_bloc.dart';

/// Represents the state of LoanTwo1 in the application.
class LoanTwo1State extends Equatable {
  LoanTwo1State({this.loanTwo1ModelObj});

  LoanTwo1Model? loanTwo1ModelObj;

  @override
  List<Object?> get props => [
        loanTwo1ModelObj,
      ];
  LoanTwo1State copyWith({LoanTwo1Model? loanTwo1ModelObj}) {
    return LoanTwo1State(
      loanTwo1ModelObj: loanTwo1ModelObj ?? this.loanTwo1ModelObj,
    );
  }
}
