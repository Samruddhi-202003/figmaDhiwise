// ignore_for_file: must_be_immutable

part of 'health_protected_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HealthProtectedOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HealthProtectedOneEvent extends Equatable {}

/// Event that is dispatched when the HealthProtectedOne widget is first created.
class HealthProtectedOneInitialEvent extends HealthProtectedOneEvent {
  @override
  List<Object?> get props => [];
}
