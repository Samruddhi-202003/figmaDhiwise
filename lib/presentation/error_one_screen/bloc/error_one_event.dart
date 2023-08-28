// ignore_for_file: must_be_immutable

part of 'error_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ErrorOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ErrorOneEvent extends Equatable {}

/// Event that is dispatched when the ErrorOne widget is first created.
class ErrorOneInitialEvent extends ErrorOneEvent {
  @override
  List<Object?> get props => [];
}
