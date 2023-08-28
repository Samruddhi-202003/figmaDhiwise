// ignore_for_file: must_be_immutable

part of 'with_surrender_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WithSurrenderContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WithSurrenderContainerEvent extends Equatable {}

/// Event that is dispatched when the WithSurrenderContainer widget is first created.
class WithSurrenderContainerInitialEvent extends WithSurrenderContainerEvent {
  @override
  List<Object?> get props => [];
}
