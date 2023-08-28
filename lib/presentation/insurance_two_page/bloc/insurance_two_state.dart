// ignore_for_file: must_be_immutable

part of 'insurance_two_bloc.dart';

/// Represents the state of InsuranceTwo in the application.
class InsuranceTwoState extends Equatable {
  InsuranceTwoState({this.insuranceTwoModelObj});

  InsuranceTwoModel? insuranceTwoModelObj;

  @override
  List<Object?> get props => [
        insuranceTwoModelObj,
      ];
  InsuranceTwoState copyWith({InsuranceTwoModel? insuranceTwoModelObj}) {
    return InsuranceTwoState(
      insuranceTwoModelObj: insuranceTwoModelObj ?? this.insuranceTwoModelObj,
    );
  }
}
