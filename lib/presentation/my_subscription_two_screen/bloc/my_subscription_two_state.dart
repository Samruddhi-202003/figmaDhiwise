// ignore_for_file: must_be_immutable

part of 'my_subscription_two_bloc.dart';

/// Represents the state of MySubscriptionTwo in the application.
class MySubscriptionTwoState extends Equatable {
  MySubscriptionTwoState({this.mySubscriptionTwoModelObj});

  MySubscriptionTwoModel? mySubscriptionTwoModelObj;

  @override
  List<Object?> get props => [
        mySubscriptionTwoModelObj,
      ];
  MySubscriptionTwoState copyWith(
      {MySubscriptionTwoModel? mySubscriptionTwoModelObj}) {
    return MySubscriptionTwoState(
      mySubscriptionTwoModelObj:
          mySubscriptionTwoModelObj ?? this.mySubscriptionTwoModelObj,
    );
  }
}
