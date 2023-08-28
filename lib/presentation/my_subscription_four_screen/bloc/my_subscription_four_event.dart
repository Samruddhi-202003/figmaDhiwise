// ignore_for_file: must_be_immutable

part of 'my_subscription_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MySubscriptionFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MySubscriptionFourEvent extends Equatable {}

/// Event that is dispatched when the MySubscriptionFour widget is first created.
class MySubscriptionFourInitialEvent extends MySubscriptionFourEvent {
  @override
  List<Object?> get props => [];
}
