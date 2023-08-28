// ignore_for_file: must_be_immutable

part of 'without_surrender_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WithoutSurrender widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WithoutSurrenderEvent extends Equatable {}

/// Event that is dispatched when the WithoutSurrender widget is first created.
class WithoutSurrenderInitialEvent extends WithoutSurrenderEvent {
  @override
  List<Object?> get props => [];
}
