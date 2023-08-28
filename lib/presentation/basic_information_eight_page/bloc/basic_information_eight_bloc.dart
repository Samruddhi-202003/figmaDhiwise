import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/basic_information_eight_page/models/basic_information_eight_model.dart';
part 'basic_information_eight_event.dart';
part 'basic_information_eight_state.dart';

/// A bloc that manages the state of a BasicInformationEight according to the event that is dispatched to it.
class BasicInformationEightBloc
    extends Bloc<BasicInformationEightEvent, BasicInformationEightState> {
  BasicInformationEightBloc(BasicInformationEightState initialState)
      : super(initialState) {
    on<BasicInformationEightInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<BasicInformationEightState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<BasicInformationEightState> emit,
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
    BasicInformationEightInitialEvent event,
    Emitter<BasicInformationEightState> emit,
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
        basicInformationEightModelObj:
            state.basicInformationEightModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }
}
