// ignore_for_file: must_be_immutable

part of 'car_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Car widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CarEvent extends Equatable {}

/// Event that is dispatched when the Car widget is first created.
class CarInitialEvent extends CarEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends CarEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
