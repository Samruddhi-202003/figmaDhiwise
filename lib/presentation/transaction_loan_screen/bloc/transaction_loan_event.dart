// ignore_for_file: must_be_immutable

part of 'transaction_loan_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TransactionLoan widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TransactionLoanEvent extends Equatable {}

/// Event that is dispatched when the TransactionLoan widget is first created.
class TransactionLoanInitialEvent extends TransactionLoanEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends TransactionLoanEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
