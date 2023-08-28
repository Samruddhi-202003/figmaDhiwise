// ignore_for_file: must_be_immutable

part of 'no_married_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NoMarriedTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NoMarriedTwoEvent extends Equatable {}

/// Event that is dispatched when the NoMarriedTwo widget is first created.
class NoMarriedTwoInitialEvent extends NoMarriedTwoEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends NoMarriedTwoEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends NoMarriedTwoEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
