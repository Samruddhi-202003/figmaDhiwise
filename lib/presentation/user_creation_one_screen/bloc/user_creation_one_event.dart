// ignore_for_file: must_be_immutable

part of 'user_creation_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///UserCreationOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UserCreationOneEvent extends Equatable {}

/// Event that is dispatched when the UserCreationOne widget is first created.
class UserCreationOneInitialEvent extends UserCreationOneEvent {
  @override
  List<Object?> get props => [];
}
