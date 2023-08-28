// ignore_for_file: must_be_immutable

part of 'disclaimer_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Disclaimer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DisclaimerEvent extends Equatable {}

/// Event that is dispatched when the Disclaimer widget is first created.
class DisclaimerInitialEvent extends DisclaimerEvent {
  @override
  List<Object?> get props => [];
}
