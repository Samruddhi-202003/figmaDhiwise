// ignore_for_file: must_be_immutable

part of 'monitoring_bloc.dart';

/// Represents the state of Monitoring in the application.
class MonitoringState extends Equatable {
  MonitoringState({
    this.isSelectedSwitch = false,
    this.monitoringModelObj,
  });

  MonitoringModel? monitoringModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        monitoringModelObj,
      ];
  MonitoringState copyWith({
    bool? isSelectedSwitch,
    MonitoringModel? monitoringModelObj,
  }) {
    return MonitoringState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      monitoringModelObj: monitoringModelObj ?? this.monitoringModelObj,
    );
  }
}
