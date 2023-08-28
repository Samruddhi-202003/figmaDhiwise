// ignore_for_file: must_be_immutable

part of 'health_protected_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HealthProtected widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HealthProtectedEvent extends Equatable {}

/// Event that is dispatched when the HealthProtected widget is first created.
class HealthProtectedInitialEvent extends HealthProtectedEvent {
  @override
  List<Object?> get props => [];
}
