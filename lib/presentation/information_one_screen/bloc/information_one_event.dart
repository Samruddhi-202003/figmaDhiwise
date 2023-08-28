// ignore_for_file: must_be_immutable

part of 'information_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InformationOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InformationOneEvent extends Equatable {}

/// Event that is dispatched when the InformationOne widget is first created.
class InformationOneInitialEvent extends InformationOneEvent {
  @override
  List<Object?> get props => [];
}
