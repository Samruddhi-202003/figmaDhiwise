// ignore_for_file: must_be_immutable

part of 'transaction_goal_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TransactionGoalDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TransactionGoalDetailsEvent extends Equatable {}

/// Event that is dispatched when the TransactionGoalDetails widget is first created.
class TransactionGoalDetailsInitialEvent extends TransactionGoalDetailsEvent {
  @override
  List<Object?> get props => [];
}
