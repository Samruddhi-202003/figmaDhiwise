// ignore_for_file: must_be_immutable

part of 'loan_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoanDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoanDetailsEvent extends Equatable {}

/// Event that is dispatched when the LoanDetails widget is first created.
class LoanDetailsInitialEvent extends LoanDetailsEvent {
  @override
  List<Object?> get props => [];
}
