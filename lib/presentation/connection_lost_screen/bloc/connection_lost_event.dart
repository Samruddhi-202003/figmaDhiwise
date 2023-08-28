// ignore_for_file: must_be_immutable

part of 'connection_lost_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ConnectionLost widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ConnectionLostEvent extends Equatable {}

/// Event that is dispatched when the ConnectionLost widget is first created.
class ConnectionLostInitialEvent extends ConnectionLostEvent {
  @override
  List<Object?> get props => [];
}
