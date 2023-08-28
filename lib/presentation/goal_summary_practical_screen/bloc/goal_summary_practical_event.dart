// ignore_for_file: must_be_immutable

part of 'goal_summary_practical_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///GoalSummaryPractical widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GoalSummaryPracticalEvent extends Equatable {}

/// Event that is dispatched when the GoalSummaryPractical widget is first created.
class GoalSummaryPracticalInitialEvent extends GoalSummaryPracticalEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends GoalSummaryPracticalEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
