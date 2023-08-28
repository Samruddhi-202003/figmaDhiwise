// ignore_for_file: must_be_immutable

part of 'retirement_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Retirement widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RetirementEvent extends Equatable {}

/// Event that is dispatched when the Retirement widget is first created.
class RetirementInitialEvent extends RetirementEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends RetirementEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
