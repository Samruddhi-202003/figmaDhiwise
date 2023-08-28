// ignore_for_file: must_be_immutable

part of 'my_subscription_three_bloc.dart';

/// Represents the state of MySubscriptionThree in the application.
class MySubscriptionThreeState extends Equatable {
  MySubscriptionThreeState({this.mySubscriptionThreeModelObj});

  MySubscriptionThreeModel? mySubscriptionThreeModelObj;

  @override
  List<Object?> get props => [
        mySubscriptionThreeModelObj,
      ];
  MySubscriptionThreeState copyWith(
      {MySubscriptionThreeModel? mySubscriptionThreeModelObj}) {
    return MySubscriptionThreeState(
      mySubscriptionThreeModelObj:
          mySubscriptionThreeModelObj ?? this.mySubscriptionThreeModelObj,
    );
  }
}
