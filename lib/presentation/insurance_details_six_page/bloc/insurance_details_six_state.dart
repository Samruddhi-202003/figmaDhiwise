// ignore_for_file: must_be_immutable

part of 'insurance_details_six_bloc.dart';

/// Represents the state of InsuranceDetailsSix in the application.
class InsuranceDetailsSixState extends Equatable {
  InsuranceDetailsSixState({this.insuranceDetailsSixModelObj});

  InsuranceDetailsSixModel? insuranceDetailsSixModelObj;

  @override
  List<Object?> get props => [
        insuranceDetailsSixModelObj,
      ];
  InsuranceDetailsSixState copyWith(
      {InsuranceDetailsSixModel? insuranceDetailsSixModelObj}) {
    return InsuranceDetailsSixState(
      insuranceDetailsSixModelObj:
          insuranceDetailsSixModelObj ?? this.insuranceDetailsSixModelObj,
    );
  }
}
