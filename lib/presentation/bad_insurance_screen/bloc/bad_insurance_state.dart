// ignore_for_file: must_be_immutable

part of 'bad_insurance_bloc.dart';

/// Represents the state of BadInsurance in the application.
class BadInsuranceState extends Equatable {
  BadInsuranceState({
    this.isSelectedSwitch = false,
    this.badInsuranceModelObj,
  });

  BadInsuranceModel? badInsuranceModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        badInsuranceModelObj,
      ];
  BadInsuranceState copyWith({
    bool? isSelectedSwitch,
    BadInsuranceModel? badInsuranceModelObj,
  }) {
    return BadInsuranceState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      badInsuranceModelObj: badInsuranceModelObj ?? this.badInsuranceModelObj,
    );
  }
}
