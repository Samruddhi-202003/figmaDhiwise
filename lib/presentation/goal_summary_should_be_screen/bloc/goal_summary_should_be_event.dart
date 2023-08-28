// ignore_for_file: must_be_immutable

part of 'goal_summary_should_be_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///GoalSummaryShouldBe widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GoalSummaryShouldBeEvent extends Equatable {}

/// Event that is dispatched when the GoalSummaryShouldBe widget is first created.
class GoalSummaryShouldBeInitialEvent extends GoalSummaryShouldBeEvent {
  @override
  List<Object?> get props => [];
}
