// ignore_for_file: must_be_immutable

part of 'bad_loan_square_off_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BadLoanSquareOff widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BadLoanSquareOffEvent extends Equatable {}

/// Event that is dispatched when the BadLoanSquareOff widget is first created.
class BadLoanSquareOffInitialEvent extends BadLoanSquareOffEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends BadLoanSquareOffEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
