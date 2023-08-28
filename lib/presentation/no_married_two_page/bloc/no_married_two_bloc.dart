import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/no_married_two_page/models/no_married_two_model.dart';
part 'no_married_two_event.dart';
part 'no_married_two_state.dart';

/// A bloc that manages the state of a NoMarriedTwo according to the event that is dispatched to it.
class NoMarriedTwoBloc extends Bloc<NoMarriedTwoEvent, NoMarriedTwoState> {
  NoMarriedTwoBloc(NoMarriedTwoState initialState) : super(initialState) {
    on<NoMarriedTwoInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<NoMarriedTwoState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<NoMarriedTwoState> emit,
  ) {
    emit(state.copyWith(
      englishYes: event.value,
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

  _onInitialize(
    NoMarriedTwoInitialEvent event,
    Emitter<NoMarriedTwoState> emit,
  ) async {
    emit(state.copyWith(
      fullNameController: TextEditingController(),
      dateOfBirthController: TextEditingController(),
      emailController: TextEditingController(),
      doyouhaveaownController: TextEditingController(),
      englishYes: false,
    ));
    emit(state.copyWith(
        noMarriedTwoModelObj: state.noMarriedTwoModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }
}
