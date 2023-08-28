// ignore_for_file: must_be_immutable

part of 'loan_details_bloc.dart';

/// Represents the state of LoanDetails in the application.
class LoanDetailsState extends Equatable {
  LoanDetailsState({this.loanDetailsModelObj});

  LoanDetailsModel? loanDetailsModelObj;

  @override
  List<Object?> get props => [
        loanDetailsModelObj,
      ];
  LoanDetailsState copyWith({LoanDetailsModel? loanDetailsModelObj}) {
    return LoanDetailsState(
      loanDetailsModelObj: loanDetailsModelObj ?? this.loanDetailsModelObj,
    );
  }
}
