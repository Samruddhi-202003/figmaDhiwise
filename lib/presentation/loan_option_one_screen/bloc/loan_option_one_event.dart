// ignore_for_file: must_be_immutable

part of 'loan_option_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoanOptionOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoanOptionOneEvent extends Equatable {}

/// Event that is dispatched when the LoanOptionOne widget is first created.
class LoanOptionOneInitialEvent extends LoanOptionOneEvent {
  @override
  List<Object?> get props => [];
}
