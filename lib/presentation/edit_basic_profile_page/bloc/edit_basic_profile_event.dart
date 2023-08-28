// ignore_for_file: must_be_immutable

part of 'edit_basic_profile_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EditBasicProfile widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EditBasicProfileEvent extends Equatable {}

/// Event that is dispatched when the EditBasicProfile widget is first created.
class EditBasicProfileInitialEvent extends EditBasicProfileEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends EditBasicProfileEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
