// ignore_for_file: must_be_immutable

part of 'dashboard_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DashboardTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DashboardTwoEvent extends Equatable {}

/// Event that is dispatched when the DashboardTwo widget is first created.
class DashboardTwoInitialEvent extends DashboardTwoEvent {
  @override
  List<Object?> get props => [];
}
