import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/my_subscription_four_screen/models/my_subscription_four_model.dart';part 'my_subscription_four_event.dart';part 'my_subscription_four_state.dart';/// A bloc that manages the state of a MySubscriptionFour according to the event that is dispatched to it.
class MySubscriptionFourBloc extends Bloc<MySubscriptionFourEvent, MySubscriptionFourState> {MySubscriptionFourBloc(MySubscriptionFourState initialState) : super(initialState) { on<MySubscriptionFourInitialEvent>(_onInitialize); }

_onInitialize(MySubscriptionFourInitialEvent event, Emitter<MySubscriptionFourState> emit, ) async  {  } 
 }
