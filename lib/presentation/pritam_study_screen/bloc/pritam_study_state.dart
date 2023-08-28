// ignore_for_file: must_be_immutable

part of 'pritam_study_bloc.dart';

/// Represents the state of PritamStudy in the application.
class PritamStudyState extends Equatable {
  PritamStudyState({
    this.groupEightySixController,
    this.isSelectedSwitch = false,
    this.pritamStudyModelObj,
  });

  TextEditingController? groupEightySixController;

  PritamStudyModel? pritamStudyModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        groupEightySixController,
        isSelectedSwitch,
        pritamStudyModelObj,
      ];
  PritamStudyState copyWith({
    TextEditingController? groupEightySixController,
    bool? isSelectedSwitch,
    PritamStudyModel? pritamStudyModelObj,
  }) {
    return PritamStudyState(
      groupEightySixController:
          groupEightySixController ?? this.groupEightySixController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      pritamStudyModelObj: pritamStudyModelObj ?? this.pritamStudyModelObj,
    );
  }
}
