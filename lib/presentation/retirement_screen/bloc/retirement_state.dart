// ignore_for_file: must_be_immutable

part of 'retirement_bloc.dart';

/// Represents the state of Retirement in the application.
class RetirementState extends Equatable {
  RetirementState({
    this.groupEightySixController,
    this.isSelectedSwitch = false,
    this.retirementModelObj,
  });

  TextEditingController? groupEightySixController;

  RetirementModel? retirementModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        groupEightySixController,
        isSelectedSwitch,
        retirementModelObj,
      ];
  RetirementState copyWith({
    TextEditingController? groupEightySixController,
    bool? isSelectedSwitch,
    RetirementModel? retirementModelObj,
  }) {
    return RetirementState(
      groupEightySixController:
          groupEightySixController ?? this.groupEightySixController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      retirementModelObj: retirementModelObj ?? this.retirementModelObj,
    );
  }
}
