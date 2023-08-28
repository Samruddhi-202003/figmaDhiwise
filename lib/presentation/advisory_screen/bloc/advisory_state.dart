// ignore_for_file: must_be_immutable

part of 'advisory_bloc.dart';

/// Represents the state of Advisory in the application.
class AdvisoryState extends Equatable {
  AdvisoryState({
    this.isSelectedSwitch = false,
    this.advisoryModelObj,
  });

  AdvisoryModel? advisoryModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        advisoryModelObj,
      ];
  AdvisoryState copyWith({
    bool? isSelectedSwitch,
    AdvisoryModel? advisoryModelObj,
  }) {
    return AdvisoryState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      advisoryModelObj: advisoryModelObj ?? this.advisoryModelObj,
    );
  }
}
