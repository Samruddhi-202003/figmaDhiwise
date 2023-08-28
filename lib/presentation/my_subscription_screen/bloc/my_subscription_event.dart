// ignore_for_file: must_be_immutable

part of 'my_subscription_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MySubscription widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MySubscriptionEvent extends Equatable {}

/// Event that is dispatched when the MySubscription widget is first created.
class MySubscriptionInitialEvent extends MySubscriptionEvent {
  @override
  List<Object?> get props => [];
}
