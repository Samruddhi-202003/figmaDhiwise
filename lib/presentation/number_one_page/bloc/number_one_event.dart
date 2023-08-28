// ignore_for_file: must_be_immutable

part of 'number_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NumberOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NumberOneEvent extends Equatable {}

/// Event that is dispatched when the NumberOne widget is first created.
class NumberOneInitialEvent extends NumberOneEvent {
  @override
  List<Object?> get props => [];
}
