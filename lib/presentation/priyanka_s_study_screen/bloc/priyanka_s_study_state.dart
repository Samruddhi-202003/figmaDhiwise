// ignore_for_file: must_be_immutable

part of 'priyanka_s_study_bloc.dart';

/// Represents the state of PriyankaSStudy in the application.
class PriyankaSStudyState extends Equatable {
  PriyankaSStudyState({
    this.groupEightySixController,
    this.isSelectedSwitch = false,
    this.priyankaSStudyModelObj,
  });

  TextEditingController? groupEightySixController;

  PriyankaSStudyModel? priyankaSStudyModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        groupEightySixController,
        isSelectedSwitch,
        priyankaSStudyModelObj,
      ];
  PriyankaSStudyState copyWith({
    TextEditingController? groupEightySixController,
    bool? isSelectedSwitch,
    PriyankaSStudyModel? priyankaSStudyModelObj,
  }) {
    return PriyankaSStudyState(
      groupEightySixController:
          groupEightySixController ?? this.groupEightySixController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      priyankaSStudyModelObj:
          priyankaSStudyModelObj ?? this.priyankaSStudyModelObj,
    );
  }
}
