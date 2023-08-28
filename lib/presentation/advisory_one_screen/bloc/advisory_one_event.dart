// ignore_for_file: must_be_immutable

part of 'advisory_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AdvisoryOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AdvisoryOneEvent extends Equatable {}

/// Event that is dispatched when the AdvisoryOne widget is first created.
class AdvisoryOneInitialEvent extends AdvisoryOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends AdvisoryOneEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
