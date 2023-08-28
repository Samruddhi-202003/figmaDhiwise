// ignore_for_file: must_be_immutable

part of 'confidentiality_bloc.dart';

/// Represents the state of Confidentiality in the application.
class ConfidentialityState extends Equatable {
  ConfidentialityState({this.confidentialityModelObj});

  ConfidentialityModel? confidentialityModelObj;

  @override
  List<Object?> get props => [
        confidentialityModelObj,
      ];
  ConfidentialityState copyWith(
      {ConfidentialityModel? confidentialityModelObj}) {
    return ConfidentialityState(
      confidentialityModelObj:
          confidentialityModelObj ?? this.confidentialityModelObj,
    );
  }
}
