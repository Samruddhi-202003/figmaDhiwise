// ignore_for_file: must_be_immutable

part of 'insurance_details_three_bloc.dart';

/// Represents the state of InsuranceDetailsThree in the application.
class InsuranceDetailsThreeState extends Equatable {
  InsuranceDetailsThreeState({this.insuranceDetailsThreeModelObj});

  InsuranceDetailsThreeModel? insuranceDetailsThreeModelObj;

  @override
  List<Object?> get props => [
        insuranceDetailsThreeModelObj,
      ];
  InsuranceDetailsThreeState copyWith(
      {InsuranceDetailsThreeModel? insuranceDetailsThreeModelObj}) {
    return InsuranceDetailsThreeState(
      insuranceDetailsThreeModelObj:
          insuranceDetailsThreeModelObj ?? this.insuranceDetailsThreeModelObj,
    );
  }
}
