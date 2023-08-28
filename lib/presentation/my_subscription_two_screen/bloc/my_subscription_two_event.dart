// ignore_for_file: must_be_immutable

part of 'my_subscription_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MySubscriptionTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MySubscriptionTwoEvent extends Equatable {}

/// Event that is dispatched when the MySubscriptionTwo widget is first created.
class MySubscriptionTwoInitialEvent extends MySubscriptionTwoEvent {
  @override
  List<Object?> get props => [];
}
