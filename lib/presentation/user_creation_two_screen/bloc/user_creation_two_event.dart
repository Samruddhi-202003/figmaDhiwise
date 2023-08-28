// ignore_for_file: must_be_immutable

part of 'user_creation_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///UserCreationTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UserCreationTwoEvent extends Equatable {}

/// Event that is dispatched when the UserCreationTwo widget is first created.
class UserCreationTwoInitialEvent extends UserCreationTwoEvent {
  @override
  List<Object?> get props => [];
}
