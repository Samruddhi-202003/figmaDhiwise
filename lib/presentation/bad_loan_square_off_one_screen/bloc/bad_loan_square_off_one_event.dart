// ignore_for_file: must_be_immutable

part of 'bad_loan_square_off_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BadLoanSquareOffOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BadLoanSquareOffOneEvent extends Equatable {}

/// Event that is dispatched when the BadLoanSquareOffOne widget is first created.
class BadLoanSquareOffOneInitialEvent extends BadLoanSquareOffOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends BadLoanSquareOffOneEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
