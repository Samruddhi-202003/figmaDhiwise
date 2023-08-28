import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/my_subscription_three_screen/models/my_subscription_three_model.dart';part 'my_subscription_three_event.dart';part 'my_subscription_three_state.dart';/// A bloc that manages the state of a MySubscriptionThree according to the event that is dispatched to it.
class MySubscriptionThreeBloc extends Bloc<MySubscriptionThreeEvent, MySubscriptionThreeState> {MySubscriptionThreeBloc(MySubscriptionThreeState initialState) : super(initialState) { on<MySubscriptionThreeInitialEvent>(_onInitialize); }

_onInitialize(MySubscriptionThreeInitialEvent event, Emitter<MySubscriptionThreeState> emit, ) async  {  } 
 }
