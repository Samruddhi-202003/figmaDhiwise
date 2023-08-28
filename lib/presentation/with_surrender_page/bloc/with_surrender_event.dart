// ignore_for_file: must_be_immutable

part of 'with_surrender_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WithSurrender widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WithSurrenderEvent extends Equatable {}

/// Event that is dispatched when the WithSurrender widget is first created.
class WithSurrenderInitialEvent extends WithSurrenderEvent {
  @override
  List<Object?> get props => [];
}
