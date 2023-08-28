// ignore_for_file: must_be_immutable

part of 'transaction_new_loan_bloc.dart';

/// Represents the state of TransactionNewLoan in the application.
class TransactionNewLoanState extends Equatable {
  TransactionNewLoanState({
    this.typeofloanController,
    this.priceController,
    this.priceController1,
    this.formsavingsController,
    this.dateController,
    this.dateController1,
    this.transactionNewLoanModelObj,
  });

  TextEditingController? typeofloanController;

  TextEditingController? priceController;

  TextEditingController? priceController1;

  TextEditingController? formsavingsController;

  TextEditingController? dateController;

  TextEditingController? dateController1;

  TransactionNewLoanModel? transactionNewLoanModelObj;

  @override
  List<Object?> get props => [
        typeofloanController,
        priceController,
        priceController1,
        formsavingsController,
        dateController,
        dateController1,
        transactionNewLoanModelObj,
      ];
  TransactionNewLoanState copyWith({
    TextEditingController? typeofloanController,
    TextEditingController? priceController,
    TextEditingController? priceController1,
    TextEditingController? formsavingsController,
    TextEditingController? dateController,
    TextEditingController? dateController1,
    TransactionNewLoanModel? transactionNewLoanModelObj,
  }) {
    return TransactionNewLoanState(
      typeofloanController: typeofloanController ?? this.typeofloanController,
      priceController: priceController ?? this.priceController,
      priceController1: priceController1 ?? this.priceController1,
      formsavingsController:
          formsavingsController ?? this.formsavingsController,
      dateController: dateController ?? this.dateController,
      dateController1: dateController1 ?? this.dateController1,
      transactionNewLoanModelObj:
          transactionNewLoanModelObj ?? this.transactionNewLoanModelObj,
    );
  }
}
