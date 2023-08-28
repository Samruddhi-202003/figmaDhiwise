// ignore_for_file: must_be_immutable

part of 'priyanka_s_study_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PriyankaSStudy widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PriyankaSStudyEvent extends Equatable {}

/// Event that is dispatched when the PriyankaSStudy widget is first created.
class PriyankaSStudyInitialEvent extends PriyankaSStudyEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends PriyankaSStudyEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
