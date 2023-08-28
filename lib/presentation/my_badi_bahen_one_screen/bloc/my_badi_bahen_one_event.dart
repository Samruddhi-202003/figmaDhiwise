// ignore_for_file: must_be_immutable

part of 'my_badi_bahen_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyBadiBahenOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyBadiBahenOneEvent extends Equatable {}

/// Event that is dispatched when the MyBadiBahenOne widget is first created.
class MyBadiBahenOneInitialEvent extends MyBadiBahenOneEvent {
  @override
  List<Object?> get props => [];
}
