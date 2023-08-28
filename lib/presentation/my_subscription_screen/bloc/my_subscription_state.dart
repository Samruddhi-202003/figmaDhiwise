// ignore_for_file: must_be_immutable

part of 'my_subscription_bloc.dart';

/// Represents the state of MySubscription in the application.
class MySubscriptionState extends Equatable {
  MySubscriptionState({this.mySubscriptionModelObj});

  MySubscriptionModel? mySubscriptionModelObj;

  @override
  List<Object?> get props => [
        mySubscriptionModelObj,
      ];
  MySubscriptionState copyWith({MySubscriptionModel? mySubscriptionModelObj}) {
    return MySubscriptionState(
      mySubscriptionModelObj:
          mySubscriptionModelObj ?? this.mySubscriptionModelObj,
    );
  }
}
