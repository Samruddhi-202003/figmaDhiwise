// ignore_for_file: must_be_immutable

part of 'transaction_old_invesment_bloc.dart';

/// Represents the state of TransactionOldInvesment in the application.
class TransactionOldInvesmentState extends Equatable {
  TransactionOldInvesmentState({
    this.priyanaksmarriaController,
    this.dateController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.old = false,
    this.transactionOldInvesmentModelObj,
  });

  TextEditingController? priyanaksmarriaController;

  TextEditingController? dateController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  TransactionOldInvesmentModel? transactionOldInvesmentModelObj;

  bool old;

  @override
  List<Object?> get props => [
        priyanaksmarriaController,
        dateController,
        selectedDropDownValue,
        selectedDropDownValue1,
        old,
        transactionOldInvesmentModelObj,
      ];
  TransactionOldInvesmentState copyWith({
    TextEditingController? priyanaksmarriaController,
    TextEditingController? dateController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    bool? old,
    TransactionOldInvesmentModel? transactionOldInvesmentModelObj,
  }) {
    return TransactionOldInvesmentState(
      priyanaksmarriaController:
          priyanaksmarriaController ?? this.priyanaksmarriaController,
      dateController: dateController ?? this.dateController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      old: old ?? this.old,
      transactionOldInvesmentModelObj: transactionOldInvesmentModelObj ??
          this.transactionOldInvesmentModelObj,
    );
  }
}
