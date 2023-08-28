// ignore_for_file: must_be_immutable

part of 'extra_child_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExtraChildThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExtraChildThreeEvent extends Equatable {}

/// Event that is dispatched when the ExtraChildThree widget is first created.
class ExtraChildThreeInitialEvent extends ExtraChildThreeEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends ExtraChildThreeEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends ExtraChildThreeEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
