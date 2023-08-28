// ignore_for_file: must_be_immutable

part of 'transaction_insurance_bloc.dart';

/// Represents the state of TransactionInsurance in the application.
class TransactionInsuranceState extends Equatable {
  TransactionInsuranceState({
    this.healthinsuranceController,
    this.formsavingsController,
    this.old = false,
    this.transactionInsuranceModelObj,
  });

  TextEditingController? healthinsuranceController;

  TextEditingController? formsavingsController;

  TransactionInsuranceModel? transactionInsuranceModelObj;

  bool old;

  @override
  List<Object?> get props => [
        healthinsuranceController,
        formsavingsController,
        old,
        transactionInsuranceModelObj,
      ];
  TransactionInsuranceState copyWith({
    TextEditingController? healthinsuranceController,
    TextEditingController? formsavingsController,
    bool? old,
    TransactionInsuranceModel? transactionInsuranceModelObj,
  }) {
    return TransactionInsuranceState(
      healthinsuranceController:
          healthinsuranceController ?? this.healthinsuranceController,
      formsavingsController:
          formsavingsController ?? this.formsavingsController,
      old: old ?? this.old,
      transactionInsuranceModelObj:
          transactionInsuranceModelObj ?? this.transactionInsuranceModelObj,
    );
  }
}
