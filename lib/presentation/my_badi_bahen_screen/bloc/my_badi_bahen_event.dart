// ignore_for_file: must_be_immutable

part of 'my_badi_bahen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyBadiBahen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyBadiBahenEvent extends Equatable {}

/// Event that is dispatched when the MyBadiBahen widget is first created.
class MyBadiBahenInitialEvent extends MyBadiBahenEvent {
  @override
  List<Object?> get props => [];
}
