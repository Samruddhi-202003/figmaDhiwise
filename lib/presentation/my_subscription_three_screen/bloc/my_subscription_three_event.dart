// ignore_for_file: must_be_immutable

part of 'my_subscription_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MySubscriptionThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MySubscriptionThreeEvent extends Equatable {}

/// Event that is dispatched when the MySubscriptionThree widget is first created.
class MySubscriptionThreeInitialEvent extends MySubscriptionThreeEvent {
  @override
  List<Object?> get props => [];
}
