// ignore_for_file: must_be_immutable

part of 'loan_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoanTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoanTwoEvent extends Equatable {}

/// Event that is dispatched when the LoanTwo widget is first created.
class LoanTwoInitialEvent extends LoanTwoEvent {
  @override
  List<Object?> get props => [];
}
