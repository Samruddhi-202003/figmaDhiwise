// ignore_for_file: must_be_immutable

part of 'user_creation_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///UserCreationFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UserCreationFourEvent extends Equatable {}

/// Event that is dispatched when the UserCreationFour widget is first created.
class UserCreationFourInitialEvent extends UserCreationFourEvent {
  @override
  List<Object?> get props => [];
}
