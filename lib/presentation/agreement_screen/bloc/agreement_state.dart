// ignore_for_file: must_be_immutable

part of 'agreement_bloc.dart';

/// Represents the state of Agreement in the application.
class AgreementState extends Equatable {
  AgreementState({this.agreementModelObj});

  AgreementModel? agreementModelObj;

  @override
  List<Object?> get props => [
        agreementModelObj,
      ];
  AgreementState copyWith({AgreementModel? agreementModelObj}) {
    return AgreementState(
      agreementModelObj: agreementModelObj ?? this.agreementModelObj,
    );
  }
}
