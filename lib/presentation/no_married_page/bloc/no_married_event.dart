// ignore_for_file: must_be_immutable

part of 'no_married_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NoMarried widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NoMarriedEvent extends Equatable {}

/// Event that is dispatched when the NoMarried widget is first created.
class NoMarriedInitialEvent extends NoMarriedEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends NoMarriedEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends NoMarriedEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox1Event extends NoMarriedEvent {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
