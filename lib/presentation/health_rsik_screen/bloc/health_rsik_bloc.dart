import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/health_rsik_item_model.dart';
import 'package:samruddhi_s_application1/presentation/health_rsik_screen/models/health_rsik_model.dart';
part 'health_rsik_event.dart';
part 'health_rsik_state.dart';

/// A bloc that manages the state of a HealthRsik according to the event that is dispatched to it.
class HealthRsikBloc extends Bloc<HealthRsikEvent, HealthRsikState> {
  HealthRsikBloc(HealthRsikState initialState) : super(initialState) {
    on<HealthRsikInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HealthRsikInitialEvent event,
    Emitter<HealthRsikState> emit,
  ) async {
    emit(state.copyWith(
        healthRsikModelObj: state.healthRsikModelObj?.copyWith(
      healthRsikItemList: fillHealthRsikItemList(),
    )));
  }

  List<HealthRsikItemModel> fillHealthRsikItemList() {
    return List.generate(3, (index) => HealthRsikItemModel());
  }
}
