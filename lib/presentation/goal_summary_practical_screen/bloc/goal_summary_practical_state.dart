// ignore_for_file: must_be_immutable

part of 'goal_summary_practical_bloc.dart';

/// Represents the state of GoalSummaryPractical in the application.
class GoalSummaryPracticalState extends Equatable {
  GoalSummaryPracticalState({
    this.group1100Controller,
    this.isSelectedSwitch = false,
    this.goalSummaryPracticalModelObj,
  });

  TextEditingController? group1100Controller;

  GoalSummaryPracticalModel? goalSummaryPracticalModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        group1100Controller,
        isSelectedSwitch,
        goalSummaryPracticalModelObj,
      ];
  GoalSummaryPracticalState copyWith({
    TextEditingController? group1100Controller,
    bool? isSelectedSwitch,
    GoalSummaryPracticalModel? goalSummaryPracticalModelObj,
  }) {
    return GoalSummaryPracticalState(
      group1100Controller: group1100Controller ?? this.group1100Controller,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      goalSummaryPracticalModelObj:
          goalSummaryPracticalModelObj ?? this.goalSummaryPracticalModelObj,
    );
  }
}
