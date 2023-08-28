// ignore_for_file: must_be_immutable

part of 'extra_child_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExtraChildOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExtraChildOneEvent extends Equatable {}

/// Event that is dispatched when the ExtraChildOne widget is first created.
class ExtraChildOneInitialEvent extends ExtraChildOneEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends ExtraChildOneEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends ExtraChildOneEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
