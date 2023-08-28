// ignore_for_file: must_be_immutable

part of 'health_rsik_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HealthRsik widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HealthRsikEvent extends Equatable {}

/// Event that is dispatched when the HealthRsik widget is first created.
class HealthRsikInitialEvent extends HealthRsikEvent {
  @override
  List<Object?> get props => [];
}
