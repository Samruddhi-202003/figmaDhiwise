// ignore_for_file: must_be_immutable

part of 'insurance_details_seven_bloc.dart';

/// Represents the state of InsuranceDetailsSeven in the application.
class InsuranceDetailsSevenState extends Equatable {
  InsuranceDetailsSevenState({this.insuranceDetailsSevenModelObj});

  InsuranceDetailsSevenModel? insuranceDetailsSevenModelObj;

  @override
  List<Object?> get props => [
        insuranceDetailsSevenModelObj,
      ];
  InsuranceDetailsSevenState copyWith(
      {InsuranceDetailsSevenModel? insuranceDetailsSevenModelObj}) {
    return InsuranceDetailsSevenState(
      insuranceDetailsSevenModelObj:
          insuranceDetailsSevenModelObj ?? this.insuranceDetailsSevenModelObj,
    );
  }
}
