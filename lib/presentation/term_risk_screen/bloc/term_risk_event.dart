// ignore_for_file: must_be_immutable

part of 'term_risk_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TermRisk widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TermRiskEvent extends Equatable {}

/// Event that is dispatched when the TermRisk widget is first created.
class TermRiskInitialEvent extends TermRiskEvent {
  @override
  List<Object?> get props => [];
}
