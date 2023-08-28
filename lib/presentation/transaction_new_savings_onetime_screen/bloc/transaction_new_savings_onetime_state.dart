// ignore_for_file: must_be_immutable

part of 'transaction_new_savings_onetime_bloc.dart';

/// Represents the state of TransactionNewSavingsOnetime in the application.
class TransactionNewSavingsOnetimeState extends Equatable {
  TransactionNewSavingsOnetimeState({
    this.paymentformvaluController,
    this.savingtypevalueController,
    this.dateController,
    this.rateofinterestvController,
    this.amountController,
    this.transactionNewSavingsOnetimeModelObj,
  });

  TextEditingController? paymentformvaluController;

  TextEditingController? savingtypevalueController;

  TextEditingController? dateController;

  TextEditingController? rateofinterestvController;

  TextEditingController? amountController;

  TransactionNewSavingsOnetimeModel? transactionNewSavingsOnetimeModelObj;

  @override
  List<Object?> get props => [
        paymentformvaluController,
        savingtypevalueController,
        dateController,
        rateofinterestvController,
        amountController,
        transactionNewSavingsOnetimeModelObj,
      ];
  TransactionNewSavingsOnetimeState copyWith({
    TextEditingController? paymentformvaluController,
    TextEditingController? savingtypevalueController,
    TextEditingController? dateController,
    TextEditingController? rateofinterestvController,
    TextEditingController? amountController,
    TransactionNewSavingsOnetimeModel? transactionNewSavingsOnetimeModelObj,
  }) {
    return TransactionNewSavingsOnetimeState(
      paymentformvaluController:
          paymentformvaluController ?? this.paymentformvaluController,
      savingtypevalueController:
          savingtypevalueController ?? this.savingtypevalueController,
      dateController: dateController ?? this.dateController,
      rateofinterestvController:
          rateofinterestvController ?? this.rateofinterestvController,
      amountController: amountController ?? this.amountController,
      transactionNewSavingsOnetimeModelObj:
          transactionNewSavingsOnetimeModelObj ??
              this.transactionNewSavingsOnetimeModelObj,
    );
  }
}
