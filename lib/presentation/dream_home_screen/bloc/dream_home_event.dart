// ignore_for_file: must_be_immutable

part of 'dream_home_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DreamHome widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DreamHomeEvent extends Equatable {}

/// Event that is dispatched when the DreamHome widget is first created.
class DreamHomeInitialEvent extends DreamHomeEvent {
  @override
  List<Object?> get props => [];
}
