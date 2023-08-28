// ignore_for_file: must_be_immutable

part of 'edit_loan_bloc.dart';

/// Represents the state of EditLoan in the application.
class EditLoanState extends Equatable {
  EditLoanState({
    this.priceController,
    this.editLoanModelObj,
  });

  TextEditingController? priceController;

  EditLoanModel? editLoanModelObj;

  @override
  List<Object?> get props => [
        priceController,
        editLoanModelObj,
      ];
  EditLoanState copyWith({
    TextEditingController? priceController,
    EditLoanModel? editLoanModelObj,
  }) {
    return EditLoanState(
      priceController: priceController ?? this.priceController,
      editLoanModelObj: editLoanModelObj ?? this.editLoanModelObj,
    );
  }
}
