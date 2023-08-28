// ignore_for_file: must_be_immutable

part of 'transaction_new_savings_onetime_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TransactionNewSavingsOnetime widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TransactionNewSavingsOnetimeEvent extends Equatable {}

/// Event that is dispatched when the TransactionNewSavingsOnetime widget is first created.
class TransactionNewSavingsOnetimeInitialEvent
    extends TransactionNewSavingsOnetimeEvent {
  @override
  List<Object?> get props => [];
}
