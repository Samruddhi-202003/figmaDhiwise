// ignore_for_file: must_be_immutable

part of 'android_large_seventeen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeSeventeen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeSeventeenEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeSeventeen widget is first created.
class AndroidLargeSeventeenInitialEvent extends AndroidLargeSeventeenEvent {
  @override
  List<Object?> get props => [];
}
