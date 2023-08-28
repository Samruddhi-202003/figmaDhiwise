// ignore_for_file: must_be_immutable

part of 'transaction_loan_one_bloc.dart';

/// Represents the state of TransactionLoanOne in the application.
class TransactionLoanOneState extends Equatable {
  TransactionLoanOneState({
    this.formsavingsController,
    this.bankdepositdetaController,
    this.oldValue = false,
    this.transactionLoanOneModelObj,
  });

  TextEditingController? formsavingsController;

  TextEditingController? bankdepositdetaController;

  TransactionLoanOneModel? transactionLoanOneModelObj;

  bool oldValue;

  @override
  List<Object?> get props => [
        formsavingsController,
        bankdepositdetaController,
        oldValue,
        transactionLoanOneModelObj,
      ];
  TransactionLoanOneState copyWith({
    TextEditingController? formsavingsController,
    TextEditingController? bankdepositdetaController,
    bool? oldValue,
    TransactionLoanOneModel? transactionLoanOneModelObj,
  }) {
    return TransactionLoanOneState(
      formsavingsController:
          formsavingsController ?? this.formsavingsController,
      bankdepositdetaController:
          bankdepositdetaController ?? this.bankdepositdetaController,
      oldValue: oldValue ?? this.oldValue,
      transactionLoanOneModelObj:
          transactionLoanOneModelObj ?? this.transactionLoanOneModelObj,
    );
  }
}
