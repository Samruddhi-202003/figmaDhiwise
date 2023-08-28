// ignore_for_file: must_be_immutable

part of 'term_risk_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TermRiskOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TermRiskOneEvent extends Equatable {}

/// Event that is dispatched when the TermRiskOne widget is first created.
class TermRiskOneInitialEvent extends TermRiskOneEvent {
  @override
  List<Object?> get props => [];
}
