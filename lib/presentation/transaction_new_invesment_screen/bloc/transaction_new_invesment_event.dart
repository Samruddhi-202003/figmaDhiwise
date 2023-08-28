// ignore_for_file: must_be_immutable

part of 'transaction_new_invesment_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TransactionNewInvesment widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TransactionNewInvesmentEvent extends Equatable {}

/// Event that is dispatched when the TransactionNewInvesment widget is first created.
class TransactionNewInvesmentInitialEvent extends TransactionNewInvesmentEvent {
  @override
  List<Object?> get props => [];
}
