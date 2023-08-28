// ignore_for_file: must_be_immutable

part of 'transaction_goal_bloc.dart';

/// Represents the state of TransactionGoal in the application.
class TransactionGoalState extends Equatable {
  TransactionGoalState({
    this.amountController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.transactionGoalModelObj,
  });

  TextEditingController? amountController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  TransactionGoalModel? transactionGoalModelObj;

  @override
  List<Object?> get props => [
        amountController,
        selectedDropDownValue,
        selectedDropDownValue1,
        transactionGoalModelObj,
      ];
  TransactionGoalState copyWith({
    TextEditingController? amountController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    TransactionGoalModel? transactionGoalModelObj,
  }) {
    return TransactionGoalState(
      amountController: amountController ?? this.amountController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      transactionGoalModelObj:
          transactionGoalModelObj ?? this.transactionGoalModelObj,
    );
  }
}
