// ignore_for_file: must_be_immutable

part of 'user_creation_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///UserCreationThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UserCreationThreeEvent extends Equatable {}

/// Event that is dispatched when the UserCreationThree widget is first created.
class UserCreationThreeInitialEvent extends UserCreationThreeEvent {
  @override
  List<Object?> get props => [];
}
