import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/extra_child_two_page/models/extra_child_two_model.dart';
part 'extra_child_two_event.dart';
part 'extra_child_two_state.dart';

/// A bloc that manages the state of a ExtraChildTwo according to the event that is dispatched to it.
class ExtraChildTwoBloc extends Bloc<ExtraChildTwoEvent, ExtraChildTwoState> {
  ExtraChildTwoBloc(ExtraChildTwoState initialState) : super(initialState) {
    on<ExtraChildTwoInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<ExtraChildTwoState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<ExtraChildTwoState> emit,
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
    ExtraChildTwoInitialEvent event,
    Emitter<ExtraChildTwoState> emit,
  ) async {
    emit(state.copyWith(
      fullNameController: TextEditingController(),
      dateOfBirthController: TextEditingController(),
      emailController: TextEditingController(),
      nameController: TextEditingController(),
      dateOfBirthController1: TextEditingController(),
      fewWordsForSpouController: TextEditingController(),
      professionvalueController: TextEditingController(),
      englishYes: false,
    ));
    emit(state.copyWith(
        extraChildTwoModelObj: state.extraChildTwoModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }
}
