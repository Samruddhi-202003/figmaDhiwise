// ignore_for_file: must_be_immutable

part of 'fianncial_plan_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FianncialPlan widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FianncialPlanEvent extends Equatable {}

/// Event that is dispatched when the FianncialPlan widget is first created.
class FianncialPlanInitialEvent extends FianncialPlanEvent {
  @override
  List<Object?> get props => [];
}
