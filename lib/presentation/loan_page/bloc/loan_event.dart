// ignore_for_file: must_be_immutable

part of 'loan_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Loan widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoanEvent extends Equatable {}

/// Event that is dispatched when the Loan widget is first created.
class LoanInitialEvent extends LoanEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends LoanEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
