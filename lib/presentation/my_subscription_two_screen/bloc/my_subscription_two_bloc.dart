import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/my_subscription_two_screen/models/my_subscription_two_model.dart';part 'my_subscription_two_event.dart';part 'my_subscription_two_state.dart';/// A bloc that manages the state of a MySubscriptionTwo according to the event that is dispatched to it.
class MySubscriptionTwoBloc extends Bloc<MySubscriptionTwoEvent, MySubscriptionTwoState> {MySubscriptionTwoBloc(MySubscriptionTwoState initialState) : super(initialState) { on<MySubscriptionTwoInitialEvent>(_onInitialize); }

_onInitialize(MySubscriptionTwoInitialEvent event, Emitter<MySubscriptionTwoState> emit, ) async  {  } 
 }
