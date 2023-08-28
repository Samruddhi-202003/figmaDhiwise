// ignore_for_file: must_be_immutable

part of 'transaction_new_savings_recurring_bloc.dart';

/// Represents the state of TransactionNewSavingsRecurring in the application.
class TransactionNewSavingsRecurringState extends Equatable {
  TransactionNewSavingsRecurringState({
    this.savingtypevalueController,
    this.dateController,
    this.dateController1,
    this.rateofinterestvController,
    this.amountController,
    this.transactionNewSavingsRecurringModelObj,
  });

  TextEditingController? savingtypevalueController;

  TextEditingController? dateController;

  TextEditingController? dateController1;

  TextEditingController? rateofinterestvController;

  TextEditingController? amountController;

  TransactionNewSavingsRecurringModel? transactionNewSavingsRecurringModelObj;

  @override
  List<Object?> get props => [
        savingtypevalueController,
        dateController,
        dateController1,
        rateofinterestvController,
        amountController,
        transactionNewSavingsRecurringModelObj,
      ];
  TransactionNewSavingsRecurringState copyWith({
    TextEditingController? savingtypevalueController,
    TextEditingController? dateController,
    TextEditingController? dateController1,
    TextEditingController? rateofinterestvController,
    TextEditingController? amountController,
    TransactionNewSavingsRecurringModel? transactionNewSavingsRecurringModelObj,
  }) {
    return TransactionNewSavingsRecurringState(
      savingtypevalueController:
          savingtypevalueController ?? this.savingtypevalueController,
      dateController: dateController ?? this.dateController,
      dateController1: dateController1 ?? this.dateController1,
      rateofinterestvController:
          rateofinterestvController ?? this.rateofinterestvController,
      amountController: amountController ?? this.amountController,
      transactionNewSavingsRecurringModelObj:
          transactionNewSavingsRecurringModelObj ??
              this.transactionNewSavingsRecurringModelObj,
    );
  }
}
