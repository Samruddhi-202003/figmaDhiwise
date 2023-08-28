// ignore_for_file: must_be_immutable

part of 'number_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Number widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NumberEvent extends Equatable {}

/// Event that is dispatched when the Number widget is first created.
class NumberInitialEvent extends NumberEvent {
  @override
  List<Object?> get props => [];
}
