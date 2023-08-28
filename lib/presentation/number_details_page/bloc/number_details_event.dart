// ignore_for_file: must_be_immutable

part of 'number_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NumberDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NumberDetailsEvent extends Equatable {}

/// Event that is dispatched when the NumberDetails widget is first created.
class NumberDetailsInitialEvent extends NumberDetailsEvent {
  @override
  List<Object?> get props => [];
}
