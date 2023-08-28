// ignore_for_file: must_be_immutable

part of 'transaction_new_loan_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TransactionNewLoan widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TransactionNewLoanEvent extends Equatable {}

/// Event that is dispatched when the TransactionNewLoan widget is first created.
class TransactionNewLoanInitialEvent extends TransactionNewLoanEvent {
  @override
  List<Object?> get props => [];
}
