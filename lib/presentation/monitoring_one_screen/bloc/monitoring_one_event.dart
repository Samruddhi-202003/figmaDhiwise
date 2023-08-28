// ignore_for_file: must_be_immutable

part of 'monitoring_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MonitoringOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MonitoringOneEvent extends Equatable {}

/// Event that is dispatched when the MonitoringOne widget is first created.
class MonitoringOneInitialEvent extends MonitoringOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends MonitoringOneEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
