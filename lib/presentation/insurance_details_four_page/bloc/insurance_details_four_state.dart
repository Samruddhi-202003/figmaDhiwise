// ignore_for_file: must_be_immutable

part of 'insurance_details_four_bloc.dart';

/// Represents the state of InsuranceDetailsFour in the application.
class InsuranceDetailsFourState extends Equatable {
  InsuranceDetailsFourState({this.insuranceDetailsFourModelObj});

  InsuranceDetailsFourModel? insuranceDetailsFourModelObj;

  @override
  List<Object?> get props => [
        insuranceDetailsFourModelObj,
      ];
  InsuranceDetailsFourState copyWith(
      {InsuranceDetailsFourModel? insuranceDetailsFourModelObj}) {
    return InsuranceDetailsFourState(
      insuranceDetailsFourModelObj:
          insuranceDetailsFourModelObj ?? this.insuranceDetailsFourModelObj,
    );
  }
}
