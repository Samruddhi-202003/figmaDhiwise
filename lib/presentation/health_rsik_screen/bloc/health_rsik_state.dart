// ignore_for_file: must_be_immutable

part of 'health_rsik_bloc.dart';

/// Represents the state of HealthRsik in the application.
class HealthRsikState extends Equatable {
  HealthRsikState({this.healthRsikModelObj});

  HealthRsikModel? healthRsikModelObj;

  @override
  List<Object?> get props => [
        healthRsikModelObj,
      ];
  HealthRsikState copyWith({HealthRsikModel? healthRsikModelObj}) {
    return HealthRsikState(
      healthRsikModelObj: healthRsikModelObj ?? this.healthRsikModelObj,
    );
  }
}
