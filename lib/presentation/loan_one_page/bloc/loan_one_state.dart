// ignore_for_file: must_be_immutable

part of 'loan_one_bloc.dart';

/// Represents the state of LoanOne in the application.
class LoanOneState extends Equatable {
  LoanOneState({
    this.carloanoneController,
    this.dateController,
    this.dateController1,
    this.loanOneModelObj,
  });

  TextEditingController? carloanoneController;

  TextEditingController? dateController;

  TextEditingController? dateController1;

  LoanOneModel? loanOneModelObj;

  @override
  List<Object?> get props => [
        carloanoneController,
        dateController,
        dateController1,
        loanOneModelObj,
      ];
  LoanOneState copyWith({
    TextEditingController? carloanoneController,
    TextEditingController? dateController,
    TextEditingController? dateController1,
    LoanOneModel? loanOneModelObj,
  }) {
    return LoanOneState(
      carloanoneController: carloanoneController ?? this.carloanoneController,
      dateController: dateController ?? this.dateController,
      dateController1: dateController1 ?? this.dateController1,
      loanOneModelObj: loanOneModelObj ?? this.loanOneModelObj,
    );
  }
}
