// ignore_for_file: must_be_immutable

part of 'error_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Error widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ErrorEvent extends Equatable {}

/// Event that is dispatched when the Error widget is first created.
class ErrorInitialEvent extends ErrorEvent {
  @override
  List<Object?> get props => [];
}
