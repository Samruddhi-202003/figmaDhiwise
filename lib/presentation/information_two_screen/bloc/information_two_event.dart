// ignore_for_file: must_be_immutable

part of 'information_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InformationTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InformationTwoEvent extends Equatable {}

/// Event that is dispatched when the InformationTwo widget is first created.
class InformationTwoInitialEvent extends InformationTwoEvent {
  @override
  List<Object?> get props => [];
}
