// ignore_for_file: must_be_immutable

part of 'transaction_new_invesment_bloc.dart';

/// Represents the state of TransactionNewInvesment in the application.
class TransactionNewInvesmentState extends Equatable {
  TransactionNewInvesmentState({
    this.formsavingsController,
    this.typeofgoalController,
    this.lumpsumController,
    this.dateController,
    this.transactionNewInvesmentModelObj,
  });

  TextEditingController? formsavingsController;

  TextEditingController? typeofgoalController;

  TextEditingController? lumpsumController;

  TextEditingController? dateController;

  TransactionNewInvesmentModel? transactionNewInvesmentModelObj;

  @override
  List<Object?> get props => [
        formsavingsController,
        typeofgoalController,
        lumpsumController,
        dateController,
        transactionNewInvesmentModelObj,
      ];
  TransactionNewInvesmentState copyWith({
    TextEditingController? formsavingsController,
    TextEditingController? typeofgoalController,
    TextEditingController? lumpsumController,
    TextEditingController? dateController,
    TransactionNewInvesmentModel? transactionNewInvesmentModelObj,
  }) {
    return TransactionNewInvesmentState(
      formsavingsController:
          formsavingsController ?? this.formsavingsController,
      typeofgoalController: typeofgoalController ?? this.typeofgoalController,
      lumpsumController: lumpsumController ?? this.lumpsumController,
      dateController: dateController ?? this.dateController,
      transactionNewInvesmentModelObj: transactionNewInvesmentModelObj ??
          this.transactionNewInvesmentModelObj,
    );
  }
}
