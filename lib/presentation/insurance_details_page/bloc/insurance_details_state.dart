// ignore_for_file: must_be_immutable

part of 'insurance_details_bloc.dart';

/// Represents the state of InsuranceDetails in the application.
class InsuranceDetailsState extends Equatable {
  InsuranceDetailsState({
    this.healthinsuranceController,
    this.monthlyoneController,
    this.amountController,
    this.dateController,
    this.dateController1,
    this.insuranceDetailsModelObj,
  });

  TextEditingController? healthinsuranceController;

  TextEditingController? monthlyoneController;

  TextEditingController? amountController;

  TextEditingController? dateController;

  TextEditingController? dateController1;

  InsuranceDetailsModel? insuranceDetailsModelObj;

  @override
  List<Object?> get props => [
        healthinsuranceController,
        monthlyoneController,
        amountController,
        dateController,
        dateController1,
        insuranceDetailsModelObj,
      ];
  InsuranceDetailsState copyWith({
    TextEditingController? healthinsuranceController,
    TextEditingController? monthlyoneController,
    TextEditingController? amountController,
    TextEditingController? dateController,
    TextEditingController? dateController1,
    InsuranceDetailsModel? insuranceDetailsModelObj,
  }) {
    return InsuranceDetailsState(
      healthinsuranceController:
          healthinsuranceController ?? this.healthinsuranceController,
      monthlyoneController: monthlyoneController ?? this.monthlyoneController,
      amountController: amountController ?? this.amountController,
      dateController: dateController ?? this.dateController,
      dateController1: dateController1 ?? this.dateController1,
      insuranceDetailsModelObj:
          insuranceDetailsModelObj ?? this.insuranceDetailsModelObj,
    );
  }
}
