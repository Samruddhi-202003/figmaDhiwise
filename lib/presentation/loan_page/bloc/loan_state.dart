// ignore_for_file: must_be_immutable

part of 'loan_bloc.dart';

/// Represents the state of Loan in the application.
class LoanState extends Equatable {
  LoanState({
    this.priceController,
    this.priceController1,
    this.yes = false,
    this.loanModelObj,
  });

  TextEditingController? priceController;

  TextEditingController? priceController1;

  LoanModel? loanModelObj;

  bool yes;

  @override
  List<Object?> get props => [
        priceController,
        priceController1,
        yes,
        loanModelObj,
      ];
  LoanState copyWith({
    TextEditingController? priceController,
    TextEditingController? priceController1,
    bool? yes,
    LoanModel? loanModelObj,
  }) {
    return LoanState(
      priceController: priceController ?? this.priceController,
      priceController1: priceController1 ?? this.priceController1,
      yes: yes ?? this.yes,
      loanModelObj: loanModelObj ?? this.loanModelObj,
    );
  }
}
