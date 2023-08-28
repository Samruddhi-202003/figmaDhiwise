// ignore_for_file: must_be_immutable

part of 'my_marriage_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyMarriage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyMarriageEvent extends Equatable {}

/// Event that is dispatched when the MyMarriage widget is first created.
class MyMarriageInitialEvent extends MyMarriageEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends MyMarriageEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
