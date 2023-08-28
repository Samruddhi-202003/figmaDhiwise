// ignore_for_file: must_be_immutable

part of 'advisory_one_bloc.dart';

/// Represents the state of AdvisoryOne in the application.
class AdvisoryOneState extends Equatable {
  AdvisoryOneState({
    this.isSelectedSwitch = false,
    this.advisoryOneModelObj,
  });

  AdvisoryOneModel? advisoryOneModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        advisoryOneModelObj,
      ];
  AdvisoryOneState copyWith({
    bool? isSelectedSwitch,
    AdvisoryOneModel? advisoryOneModelObj,
  }) {
    return AdvisoryOneState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      advisoryOneModelObj: advisoryOneModelObj ?? this.advisoryOneModelObj,
    );
  }
}
