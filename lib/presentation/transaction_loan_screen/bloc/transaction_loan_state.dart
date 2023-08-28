// ignore_for_file: must_be_immutable

part of 'transaction_loan_bloc.dart';

/// Represents the state of TransactionLoan in the application.
class TransactionLoanState extends Equatable {
  TransactionLoanState({
    this.carloanController,
    this.payemiController,
    this.formsavingsController,
    this.old = false,
    this.transactionLoanModelObj,
  });

  TextEditingController? carloanController;

  TextEditingController? payemiController;

  TextEditingController? formsavingsController;

  TransactionLoanModel? transactionLoanModelObj;

  bool old;

  @override
  List<Object?> get props => [
        carloanController,
        payemiController,
        formsavingsController,
        old,
        transactionLoanModelObj,
      ];
  TransactionLoanState copyWith({
    TextEditingController? carloanController,
    TextEditingController? payemiController,
    TextEditingController? formsavingsController,
    bool? old,
    TransactionLoanModel? transactionLoanModelObj,
  }) {
    return TransactionLoanState(
      carloanController: carloanController ?? this.carloanController,
      payemiController: payemiController ?? this.payemiController,
      formsavingsController:
          formsavingsController ?? this.formsavingsController,
      old: old ?? this.old,
      transactionLoanModelObj:
          transactionLoanModelObj ?? this.transactionLoanModelObj,
    );
  }
}
