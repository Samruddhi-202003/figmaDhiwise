// ignore_for_file: must_be_immutable

part of 'insurance_one_bloc.dart';

/// Represents the state of InsuranceOne in the application.
class InsuranceOneState extends Equatable {
  InsuranceOneState({
    this.healthinsuranceController,
    this.monthlyoneController,
    this.dateController,
    this.insuranceOneModelObj,
  });

  TextEditingController? healthinsuranceController;

  TextEditingController? monthlyoneController;

  TextEditingController? dateController;

  InsuranceOneModel? insuranceOneModelObj;

  @override
  List<Object?> get props => [
        healthinsuranceController,
        monthlyoneController,
        dateController,
        insuranceOneModelObj,
      ];
  InsuranceOneState copyWith({
    TextEditingController? healthinsuranceController,
    TextEditingController? monthlyoneController,
    TextEditingController? dateController,
    InsuranceOneModel? insuranceOneModelObj,
  }) {
    return InsuranceOneState(
      healthinsuranceController:
          healthinsuranceController ?? this.healthinsuranceController,
      monthlyoneController: monthlyoneController ?? this.monthlyoneController,
      dateController: dateController ?? this.dateController,
      insuranceOneModelObj: insuranceOneModelObj ?? this.insuranceOneModelObj,
    );
  }
}
