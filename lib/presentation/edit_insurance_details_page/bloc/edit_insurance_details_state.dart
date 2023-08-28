// ignore_for_file: must_be_immutable

part of 'edit_insurance_details_bloc.dart';

/// Represents the state of EditInsuranceDetails in the application.
class EditInsuranceDetailsState extends Equatable {
  EditInsuranceDetailsState({
    this.healthinsuranceController,
    this.monthlyoneController,
    this.amountController,
    this.dateController,
    this.dateController1,
    this.editInsuranceDetailsModelObj,
  });

  TextEditingController? healthinsuranceController;

  TextEditingController? monthlyoneController;

  TextEditingController? amountController;

  TextEditingController? dateController;

  TextEditingController? dateController1;

  EditInsuranceDetailsModel? editInsuranceDetailsModelObj;

  @override
  List<Object?> get props => [
        healthinsuranceController,
        monthlyoneController,
        amountController,
        dateController,
        dateController1,
        editInsuranceDetailsModelObj,
      ];
  EditInsuranceDetailsState copyWith({
    TextEditingController? healthinsuranceController,
    TextEditingController? monthlyoneController,
    TextEditingController? amountController,
    TextEditingController? dateController,
    TextEditingController? dateController1,
    EditInsuranceDetailsModel? editInsuranceDetailsModelObj,
  }) {
    return EditInsuranceDetailsState(
      healthinsuranceController:
          healthinsuranceController ?? this.healthinsuranceController,
      monthlyoneController: monthlyoneController ?? this.monthlyoneController,
      amountController: amountController ?? this.amountController,
      dateController: dateController ?? this.dateController,
      dateController1: dateController1 ?? this.dateController1,
      editInsuranceDetailsModelObj:
          editInsuranceDetailsModelObj ?? this.editInsuranceDetailsModelObj,
    );
  }
}
