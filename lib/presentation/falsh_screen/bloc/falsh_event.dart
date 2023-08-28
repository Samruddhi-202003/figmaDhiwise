// ignore_for_file: must_be_immutable

part of 'falsh_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Falsh widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FalshEvent extends Equatable {}

/// Event that is dispatched when the Falsh widget is first created.
class FalshInitialEvent extends FalshEvent {
  @override
  List<Object?> get props => [];
}
