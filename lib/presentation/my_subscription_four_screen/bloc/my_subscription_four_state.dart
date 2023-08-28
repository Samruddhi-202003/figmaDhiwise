// ignore_for_file: must_be_immutable

part of 'my_subscription_four_bloc.dart';

/// Represents the state of MySubscriptionFour in the application.
class MySubscriptionFourState extends Equatable {
  MySubscriptionFourState({this.mySubscriptionFourModelObj});

  MySubscriptionFourModel? mySubscriptionFourModelObj;

  @override
  List<Object?> get props => [
        mySubscriptionFourModelObj,
      ];
  MySubscriptionFourState copyWith(
      {MySubscriptionFourModel? mySubscriptionFourModelObj}) {
    return MySubscriptionFourState(
      mySubscriptionFourModelObj:
          mySubscriptionFourModelObj ?? this.mySubscriptionFourModelObj,
    );
  }
}
