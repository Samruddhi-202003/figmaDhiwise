import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/no_married_one_item_model.dart';
import 'package:samruddhi_s_application1/presentation/no_married_one_page/models/no_married_one_model.dart';
part 'no_married_one_event.dart';
part 'no_married_one_state.dart';

/// A bloc that manages the state of a NoMarriedOne according to the event that is dispatched to it.
class NoMarriedOneBloc extends Bloc<NoMarriedOneEvent, NoMarriedOneState> {
  NoMarriedOneBloc(NoMarriedOneState initialState) : super(initialState) {
    on<NoMarriedOneInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<NoMarriedOneState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<NoMarriedOneItemModel> fillNoMarriedOneItemList() {
    return List.generate(5, (index) => NoMarriedOneItemModel());
  }

  _onInitialize(
    NoMarriedOneInitialEvent event,
    Emitter<NoMarriedOneState> emit,
  ) async {
    emit(state.copyWith(
      fullNameController: TextEditingController(),
      dateOfBirthController: TextEditingController(),
      emailController: TextEditingController(),
    ));
    emit(state.copyWith(
        noMarriedOneModelObj: state.noMarriedOneModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      noMarriedOneItemList: fillNoMarriedOneItemList(),
    )));
  }
}
