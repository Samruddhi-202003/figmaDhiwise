// ignore_for_file: must_be_immutable

part of 'loan_option_one_bloc.dart';

/// Represents the state of LoanOptionOne in the application.
class LoanOptionOneState extends Equatable {
  LoanOptionOneState({this.loanOptionOneModelObj});

  LoanOptionOneModel? loanOptionOneModelObj;

  @override
  List<Object?> get props => [
        loanOptionOneModelObj,
      ];
  LoanOptionOneState copyWith({LoanOptionOneModel? loanOptionOneModelObj}) {
    return LoanOptionOneState(
      loanOptionOneModelObj:
          loanOptionOneModelObj ?? this.loanOptionOneModelObj,
    );
  }
}
