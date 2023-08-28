// ignore_for_file: must_be_immutable

part of 'loan_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoanOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoanOneEvent extends Equatable {}

/// Event that is dispatched when the LoanOne widget is first created.
class LoanOneInitialEvent extends LoanOneEvent {
  @override
  List<Object?> get props => [];
}
