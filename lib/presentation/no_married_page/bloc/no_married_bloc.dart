import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/no_married_page/models/no_married_model.dart';
part 'no_married_event.dart';
part 'no_married_state.dart';

/// A bloc that manages the state of a NoMarried according to the event that is dispatched to it.
class NoMarriedBloc extends Bloc<NoMarriedEvent, NoMarriedState> {
  NoMarriedBloc(NoMarriedState initialState) : super(initialState) {
    on<NoMarriedInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<NoMarriedState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<NoMarriedState> emit,
  ) {
    emit(state.copyWith(
      yes: event.value,
    ));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<NoMarriedState> emit,
  ) {
    emit(state.copyWith(
      yesone: event.value,
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
    NoMarriedInitialEvent event,
    Emitter<NoMarriedState> emit,
  ) async {
    emit(state.copyWith(
      fullNameController: TextEditingController(),
      dateOfBirthController: TextEditingController(),
      emailController: TextEditingController(),
      doyouhaveaownController: TextEditingController(),
      yes: false,
      yesone: false,
    ));
    emit(state.copyWith(
        noMarriedModelObj: state.noMarriedModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }
}
