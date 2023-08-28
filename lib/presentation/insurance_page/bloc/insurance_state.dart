// ignore_for_file: must_be_immutable

part of 'insurance_bloc.dart';

/// Represents the state of Insurance in the application.
class InsuranceState extends Equatable {
  InsuranceState({
    this.healthinsuranceController,
    this.monthlyController,
    this.dateController,
    this.yes = false,
    this.insuranceModelObj,
  });

  TextEditingController? healthinsuranceController;

  TextEditingController? monthlyController;

  TextEditingController? dateController;

  InsuranceModel? insuranceModelObj;

  bool yes;

  @override
  List<Object?> get props => [
        healthinsuranceController,
        monthlyController,
        dateController,
        yes,
        insuranceModelObj,
      ];
  InsuranceState copyWith({
    TextEditingController? healthinsuranceController,
    TextEditingController? monthlyController,
    TextEditingController? dateController,
    bool? yes,
    InsuranceModel? insuranceModelObj,
  }) {
    return InsuranceState(
      healthinsuranceController:
          healthinsuranceController ?? this.healthinsuranceController,
      monthlyController: monthlyController ?? this.monthlyController,
      dateController: dateController ?? this.dateController,
      yes: yes ?? this.yes,
      insuranceModelObj: insuranceModelObj ?? this.insuranceModelObj,
    );
  }
}
