// ignore_for_file: must_be_immutable

part of 'loan_option_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoanOption widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoanOptionEvent extends Equatable {}

/// Event that is dispatched when the LoanOption widget is first created.
class LoanOptionInitialEvent extends LoanOptionEvent {
  @override
  List<Object?> get props => [];
}
