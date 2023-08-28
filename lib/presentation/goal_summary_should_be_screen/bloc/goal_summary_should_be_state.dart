// ignore_for_file: must_be_immutable

part of 'goal_summary_should_be_bloc.dart';

/// Represents the state of GoalSummaryShouldBe in the application.
class GoalSummaryShouldBeState extends Equatable {
  GoalSummaryShouldBeState({
    this.group1098Controller,
    this.goalSummaryShouldBeModelObj,
  });

  TextEditingController? group1098Controller;

  GoalSummaryShouldBeModel? goalSummaryShouldBeModelObj;

  @override
  List<Object?> get props => [
        group1098Controller,
        goalSummaryShouldBeModelObj,
      ];
  GoalSummaryShouldBeState copyWith({
    TextEditingController? group1098Controller,
    GoalSummaryShouldBeModel? goalSummaryShouldBeModelObj,
  }) {
    return GoalSummaryShouldBeState(
      group1098Controller: group1098Controller ?? this.group1098Controller,
      goalSummaryShouldBeModelObj:
          goalSummaryShouldBeModelObj ?? this.goalSummaryShouldBeModelObj,
    );
  }
}
