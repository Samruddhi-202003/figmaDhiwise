// ignore_for_file: must_be_immutable

part of 'advisory_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Advisory widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AdvisoryEvent extends Equatable {}

/// Event that is dispatched when the Advisory widget is first created.
class AdvisoryInitialEvent extends AdvisoryEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends AdvisoryEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
