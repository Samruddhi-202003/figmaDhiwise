// ignore_for_file: must_be_immutable

part of 'welcome_baby_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WelcomeBaby widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WelcomeBabyEvent extends Equatable {}

/// Event that is dispatched when the WelcomeBaby widget is first created.
class WelcomeBabyInitialEvent extends WelcomeBabyEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends WelcomeBabyEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
