// ignore_for_file: must_be_immutable

part of 'my_badi_bahen_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyBadiBahenTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyBadiBahenTwoEvent extends Equatable {}

/// Event that is dispatched when the MyBadiBahenTwo widget is first created.
class MyBadiBahenTwoInitialEvent extends MyBadiBahenTwoEvent {
  @override
  List<Object?> get props => [];
}
