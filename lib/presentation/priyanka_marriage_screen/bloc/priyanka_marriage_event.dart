// ignore_for_file: must_be_immutable

part of 'priyanka_marriage_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PriyankaMarriage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PriyankaMarriageEvent extends Equatable {}

/// Event that is dispatched when the PriyankaMarriage widget is first created.
class PriyankaMarriageInitialEvent extends PriyankaMarriageEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends PriyankaMarriageEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
