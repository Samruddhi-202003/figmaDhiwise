// ignore_for_file: must_be_immutable

part of 'transaction_old_invesment_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TransactionOldInvesment widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TransactionOldInvesmentEvent extends Equatable {}

/// Event that is dispatched when the TransactionOldInvesment widget is first created.
class TransactionOldInvesmentInitialEvent extends TransactionOldInvesmentEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends TransactionOldInvesmentEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDownEvent extends TransactionOldInvesmentEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends TransactionOldInvesmentEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
