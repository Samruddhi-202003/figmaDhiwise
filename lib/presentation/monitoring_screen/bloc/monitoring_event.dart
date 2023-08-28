// ignore_for_file: must_be_immutable

part of 'monitoring_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Monitoring widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MonitoringEvent extends Equatable {}

/// Event that is dispatched when the Monitoring widget is first created.
class MonitoringInitialEvent extends MonitoringEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends MonitoringEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
