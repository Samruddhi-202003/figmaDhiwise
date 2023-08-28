// ignore_for_file: must_be_immutable

part of 'loan_option_bloc.dart';

/// Represents the state of LoanOption in the application.
class LoanOptionState extends Equatable {
  LoanOptionState({this.loanOptionModelObj});

  LoanOptionModel? loanOptionModelObj;

  @override
  List<Object?> get props => [
        loanOptionModelObj,
      ];
  LoanOptionState copyWith({LoanOptionModel? loanOptionModelObj}) {
    return LoanOptionState(
      loanOptionModelObj: loanOptionModelObj ?? this.loanOptionModelObj,
    );
  }
}
