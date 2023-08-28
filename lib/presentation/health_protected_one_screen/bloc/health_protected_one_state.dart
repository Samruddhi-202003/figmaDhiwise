// ignore_for_file: must_be_immutable

part of 'health_protected_one_bloc.dart';

/// Represents the state of HealthProtectedOne in the application.
class HealthProtectedOneState extends Equatable {
  HealthProtectedOneState({this.healthProtectedOneModelObj});

  HealthProtectedOneModel? healthProtectedOneModelObj;

  @override
  List<Object?> get props => [
        healthProtectedOneModelObj,
      ];
  HealthProtectedOneState copyWith(
      {HealthProtectedOneModel? healthProtectedOneModelObj}) {
    return HealthProtectedOneState(
      healthProtectedOneModelObj:
          healthProtectedOneModelObj ?? this.healthProtectedOneModelObj,
    );
  }
}
