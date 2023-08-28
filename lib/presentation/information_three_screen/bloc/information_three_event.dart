// ignore_for_file: must_be_immutable

part of 'information_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InformationThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InformationThreeEvent extends Equatable {}

/// Event that is dispatched when the InformationThree widget is first created.
class InformationThreeInitialEvent extends InformationThreeEvent {
  @override
  List<Object?> get props => [];
}
