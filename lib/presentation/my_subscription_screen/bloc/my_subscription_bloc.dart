import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/my_subscription_screen/models/my_subscription_model.dart';part 'my_subscription_event.dart';part 'my_subscription_state.dart';/// A bloc that manages the state of a MySubscription according to the event that is dispatched to it.
class MySubscriptionBloc extends Bloc<MySubscriptionEvent, MySubscriptionState> {MySubscriptionBloc(MySubscriptionState initialState) : super(initialState) { on<MySubscriptionInitialEvent>(_onInitialize); }

_onInitialize(MySubscriptionInitialEvent event, Emitter<MySubscriptionState> emit, ) async  {  } 
 }
