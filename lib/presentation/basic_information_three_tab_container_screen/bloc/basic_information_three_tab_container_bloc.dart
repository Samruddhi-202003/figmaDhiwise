import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/basic_information_three_tab_container_screen/models/basic_information_three_tab_container_model.dart';
part 'basic_information_three_tab_container_event.dart';
part 'basic_information_three_tab_container_state.dart';

/// A bloc that manages the state of a BasicInformationThreeTabContainer according to the event that is dispatched to it.
class BasicInformationThreeTabContainerBloc extends Bloc<
    BasicInformationThreeTabContainerEvent,
    BasicInformationThreeTabContainerState> {
  BasicInformationThreeTabContainerBloc(
      BasicInformationThreeTabContainerState initialState)
      : super(initialState) {
    on<BasicInformationThreeTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BasicInformationThreeTabContainerInitialEvent event,
    Emitter<BasicInformationThreeTabContainerState> emit,
  ) async {}
}
