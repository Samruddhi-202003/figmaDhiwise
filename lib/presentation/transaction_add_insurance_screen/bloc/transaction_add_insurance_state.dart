// ignore_for_file: must_be_immutable

part of 'transaction_add_insurance_bloc.dart';

/// Represents the state of TransactionAddInsurance in the application.
class TransactionAddInsuranceState extends Equatable {
  TransactionAddInsuranceState({
    this.lifeinsuranceController,
    this.formsavingsController,
    this.monthlyController,
    this.amountController,
    this.dateController,
    this.dateController1,
    this.transactionAddInsuranceModelObj,
  });

  TextEditingController? lifeinsuranceController;

  TextEditingController? formsavingsController;

  TextEditingController? monthlyController;

  TextEditingController? amountController;

  TextEditingController? dateController;

  TextEditingController? dateController1;

  TransactionAddInsuranceModel? transactionAddInsuranceModelObj;

  @override
  List<Object?> get props => [
        lifeinsuranceController,
        formsavingsController,
        monthlyController,
        amountController,
        dateController,
        dateController1,
        transactionAddInsuranceModelObj,
      ];
  TransactionAddInsuranceState copyWith({
    TextEditingController? lifeinsuranceController,
    TextEditingController? formsavingsController,
    TextEditingController? monthlyController,
    TextEditingController? amountController,
    TextEditingController? dateController,
    TextEditingController? dateController1,
    TransactionAddInsuranceModel? transactionAddInsuranceModelObj,
  }) {
    return TransactionAddInsuranceState(
      lifeinsuranceController:
          lifeinsuranceController ?? this.lifeinsuranceController,
      formsavingsController:
          formsavingsController ?? this.formsavingsController,
      monthlyController: monthlyController ?? this.monthlyController,
      amountController: amountController ?? this.amountController,
      dateController: dateController ?? this.dateController,
      dateController1: dateController1 ?? this.dateController1,
      transactionAddInsuranceModelObj: transactionAddInsuranceModelObj ??
          this.transactionAddInsuranceModelObj,
    );
  }
}
