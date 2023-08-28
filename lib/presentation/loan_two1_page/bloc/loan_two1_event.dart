// ignore_for_file: must_be_immutable

part of 'loan_two1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoanTwo1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoanTwo1Event extends Equatable {}

/// Event that is dispatched when the LoanTwo1 widget is first created.
class LoanTwo1InitialEvent extends LoanTwo1Event {
  @override
  List<Object?> get props => [];
}
