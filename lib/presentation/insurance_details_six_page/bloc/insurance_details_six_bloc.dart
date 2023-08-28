import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listhealth_item_model.dart';
import 'package:samruddhi_s_application1/presentation/insurance_details_six_page/models/insurance_details_six_model.dart';
part 'insurance_details_six_event.dart';
part 'insurance_details_six_state.dart';

/// A bloc that manages the state of a InsuranceDetailsSix according to the event that is dispatched to it.
class InsuranceDetailsSixBloc
    extends Bloc<InsuranceDetailsSixEvent, InsuranceDetailsSixState> {
  InsuranceDetailsSixBloc(InsuranceDetailsSixState initialState)
      : super(initialState) {
    on<InsuranceDetailsSixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InsuranceDetailsSixInitialEvent event,
    Emitter<InsuranceDetailsSixState> emit,
  ) async {
    emit(state.copyWith(
        insuranceDetailsSixModelObj:
            state.insuranceDetailsSixModelObj?.copyWith(
      listhealthItemList: fillListhealthItemList(),
    )));
  }

  List<ListhealthItemModel> fillListhealthItemList() {
    return List.generate(3, (index) => ListhealthItemModel());
  }
}
