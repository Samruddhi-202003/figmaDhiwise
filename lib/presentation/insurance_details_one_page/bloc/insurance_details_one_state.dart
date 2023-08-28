// ignore_for_file: must_be_immutable

part of 'insurance_details_one_bloc.dart';

/// Represents the state of InsuranceDetailsOne in the application.
class InsuranceDetailsOneState extends Equatable {
  InsuranceDetailsOneState({this.insuranceDetailsOneModelObj});

  InsuranceDetailsOneModel? insuranceDetailsOneModelObj;

  @override
  List<Object?> get props => [
        insuranceDetailsOneModelObj,
      ];
  InsuranceDetailsOneState copyWith(
      {InsuranceDetailsOneModel? insuranceDetailsOneModelObj}) {
    return InsuranceDetailsOneState(
      insuranceDetailsOneModelObj:
          insuranceDetailsOneModelObj ?? this.insuranceDetailsOneModelObj,
    );
  }
}
