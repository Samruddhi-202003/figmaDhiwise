import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/basic_information_five_page/models/basic_information_five_model.dart';
part 'basic_information_five_event.dart';
part 'basic_information_five_state.dart';

/// A bloc that manages the state of a BasicInformationFive according to the event that is dispatched to it.
class BasicInformationFiveBloc
    extends Bloc<BasicInformationFiveEvent, BasicInformationFiveState> {
  BasicInformationFiveBloc(BasicInformationFiveState initialState)
      : super(initialState) {
    on<BasicInformationFiveInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<BasicInformationFiveState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<BasicInformationFiveState> emit,
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
    BasicInformationFiveInitialEvent event,
    Emitter<BasicInformationFiveState> emit,
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
        basicInformationFiveModelObj:
            state.basicInformationFiveModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }
}
