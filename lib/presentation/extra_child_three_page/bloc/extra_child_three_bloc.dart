import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/extra_child_three_page/models/extra_child_three_model.dart';
part 'extra_child_three_event.dart';
part 'extra_child_three_state.dart';

/// A bloc that manages the state of a ExtraChildThree according to the event that is dispatched to it.
class ExtraChildThreeBloc
    extends Bloc<ExtraChildThreeEvent, ExtraChildThreeState> {
  ExtraChildThreeBloc(ExtraChildThreeState initialState) : super(initialState) {
    on<ExtraChildThreeInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<ExtraChildThreeState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<ExtraChildThreeState> emit,
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
    ExtraChildThreeInitialEvent event,
    Emitter<ExtraChildThreeState> emit,
  ) async {
    emit(state.copyWith(
      fullNameController: TextEditingController(),
      dateOfBirthController: TextEditingController(),
      emailController: TextEditingController(),
      nameController: TextEditingController(),
      dateOfBirthController1: TextEditingController(),
      spouseDescriptiController: TextEditingController(),
      professionvalueController: TextEditingController(),
      englishYes: false,
    ));
    emit(state.copyWith(
        extraChildThreeModelObj: state.extraChildThreeModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }
}
