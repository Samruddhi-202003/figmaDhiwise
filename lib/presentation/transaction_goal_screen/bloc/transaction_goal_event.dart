// ignore_for_file: must_be_immutable

part of 'transaction_goal_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TransactionGoal widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TransactionGoalEvent extends Equatable {}

/// Event that is dispatched when the TransactionGoal widget is first created.
class TransactionGoalInitialEvent extends TransactionGoalEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends TransactionGoalEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends TransactionGoalEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
