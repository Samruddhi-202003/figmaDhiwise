// ignore_for_file: must_be_immutable

part of 'health_protected_bloc.dart';

/// Represents the state of HealthProtected in the application.
class HealthProtectedState extends Equatable {
  HealthProtectedState({this.healthProtectedModelObj});

  HealthProtectedModel? healthProtectedModelObj;

  @override
  List<Object?> get props => [
        healthProtectedModelObj,
      ];
  HealthProtectedState copyWith(
      {HealthProtectedModel? healthProtectedModelObj}) {
    return HealthProtectedState(
      healthProtectedModelObj:
          healthProtectedModelObj ?? this.healthProtectedModelObj,
    );
  }
}
