// ignore_for_file: must_be_immutable

part of 'insurance_details_two_bloc.dart';

/// Represents the state of InsuranceDetailsTwo in the application.
class InsuranceDetailsTwoState extends Equatable {
  InsuranceDetailsTwoState({this.insuranceDetailsTwoModelObj});

  InsuranceDetailsTwoModel? insuranceDetailsTwoModelObj;

  @override
  List<Object?> get props => [
        insuranceDetailsTwoModelObj,
      ];
  InsuranceDetailsTwoState copyWith(
      {InsuranceDetailsTwoModel? insuranceDetailsTwoModelObj}) {
    return InsuranceDetailsTwoState(
      insuranceDetailsTwoModelObj:
          insuranceDetailsTwoModelObj ?? this.insuranceDetailsTwoModelObj,
    );
  }
}
