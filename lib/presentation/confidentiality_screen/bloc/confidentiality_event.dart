// ignore_for_file: must_be_immutable

part of 'confidentiality_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Confidentiality widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ConfidentialityEvent extends Equatable {}

/// Event that is dispatched when the Confidentiality widget is first created.
class ConfidentialityInitialEvent extends ConfidentialityEvent {
  @override
  List<Object?> get props => [];
}
