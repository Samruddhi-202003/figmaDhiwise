// ignore_for_file: must_be_immutable

part of 'extra_child_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExtraChildTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExtraChildTwoEvent extends Equatable {}

/// Event that is dispatched when the ExtraChildTwo widget is first created.
class ExtraChildTwoInitialEvent extends ExtraChildTwoEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends ExtraChildTwoEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends ExtraChildTwoEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
