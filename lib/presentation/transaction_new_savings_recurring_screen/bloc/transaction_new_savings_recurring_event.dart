// ignore_for_file: must_be_immutable

part of 'transaction_new_savings_recurring_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TransactionNewSavingsRecurring widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TransactionNewSavingsRecurringEvent extends Equatable {}

/// Event that is dispatched when the TransactionNewSavingsRecurring widget is first created.
class TransactionNewSavingsRecurringInitialEvent
    extends TransactionNewSavingsRecurringEvent {
  @override
  List<Object?> get props => [];
}
