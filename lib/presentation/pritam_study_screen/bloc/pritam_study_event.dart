// ignore_for_file: must_be_immutable

part of 'pritam_study_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PritamStudy widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PritamStudyEvent extends Equatable {}

/// Event that is dispatched when the PritamStudy widget is first created.
class PritamStudyInitialEvent extends PritamStudyEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends PritamStudyEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
