// ignore_for_file: must_be_immutable

part of 'transaction_loan_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TransactionLoanOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TransactionLoanOneEvent extends Equatable {}

/// Event that is dispatched when the TransactionLoanOne widget is first created.
class TransactionLoanOneInitialEvent extends TransactionLoanOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends TransactionLoanOneEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
