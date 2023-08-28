// ignore_for_file: must_be_immutable

part of 'priyanka_marriage_bloc.dart';

/// Represents the state of PriyankaMarriage in the application.
class PriyankaMarriageState extends Equatable {
  PriyankaMarriageState({
    this.groupEightySixController,
    this.isSelectedSwitch = false,
    this.priyankaMarriageModelObj,
  });

  TextEditingController? groupEightySixController;

  PriyankaMarriageModel? priyankaMarriageModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        groupEightySixController,
        isSelectedSwitch,
        priyankaMarriageModelObj,
      ];
  PriyankaMarriageState copyWith({
    TextEditingController? groupEightySixController,
    bool? isSelectedSwitch,
    PriyankaMarriageModel? priyankaMarriageModelObj,
  }) {
    return PriyankaMarriageState(
      groupEightySixController:
          groupEightySixController ?? this.groupEightySixController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      priyankaMarriageModelObj:
          priyankaMarriageModelObj ?? this.priyankaMarriageModelObj,
    );
  }
}
