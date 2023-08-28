// ignore_for_file: must_be_immutable

part of 'monitoring_one_bloc.dart';

/// Represents the state of MonitoringOne in the application.
class MonitoringOneState extends Equatable {
  MonitoringOneState({
    this.isSelectedSwitch = false,
    this.monitoringOneModelObj,
  });

  MonitoringOneModel? monitoringOneModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        monitoringOneModelObj,
      ];
  MonitoringOneState copyWith({
    bool? isSelectedSwitch,
    MonitoringOneModel? monitoringOneModelObj,
  }) {
    return MonitoringOneState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      monitoringOneModelObj:
          monitoringOneModelObj ?? this.monitoringOneModelObj,
    );
  }
}
