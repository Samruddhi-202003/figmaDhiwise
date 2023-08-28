import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listcoverneeded1_item_model.dart';
import 'package:samruddhi_s_application1/presentation/health_protected_one_screen/models/health_protected_one_model.dart';
part 'health_protected_one_event.dart';
part 'health_protected_one_state.dart';

/// A bloc that manages the state of a HealthProtectedOne according to the event that is dispatched to it.
class HealthProtectedOneBloc
    extends Bloc<HealthProtectedOneEvent, HealthProtectedOneState> {
  HealthProtectedOneBloc(HealthProtectedOneState initialState)
      : super(initialState) {
    on<HealthProtectedOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HealthProtectedOneInitialEvent event,
    Emitter<HealthProtectedOneState> emit,
  ) async {
    emit(state.copyWith(
        healthProtectedOneModelObj: state.healthProtectedOneModelObj?.copyWith(
      listcoverneeded1ItemList: fillListcoverneeded1ItemList(),
    )));
  }

  List<Listcoverneeded1ItemModel> fillListcoverneeded1ItemList() {
    return List.generate(3, (index) => Listcoverneeded1ItemModel());
  }
}
