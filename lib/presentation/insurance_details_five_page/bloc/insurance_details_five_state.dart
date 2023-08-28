// ignore_for_file: must_be_immutable

part of 'insurance_details_five_bloc.dart';

/// Represents the state of InsuranceDetailsFive in the application.
class InsuranceDetailsFiveState extends Equatable {
  InsuranceDetailsFiveState({this.insuranceDetailsFiveModelObj});

  InsuranceDetailsFiveModel? insuranceDetailsFiveModelObj;

  @override
  List<Object?> get props => [
        insuranceDetailsFiveModelObj,
      ];
  InsuranceDetailsFiveState copyWith(
      {InsuranceDetailsFiveModel? insuranceDetailsFiveModelObj}) {
    return InsuranceDetailsFiveState(
      insuranceDetailsFiveModelObj:
          insuranceDetailsFiveModelObj ?? this.insuranceDetailsFiveModelObj,
    );
  }
}
