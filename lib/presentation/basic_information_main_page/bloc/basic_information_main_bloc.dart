import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/basic_information_main_page/models/basic_information_main_model.dart';
part 'basic_information_main_event.dart';
part 'basic_information_main_state.dart';

/// A bloc that manages the state of a BasicInformationMain according to the event that is dispatched to it.
class BasicInformationMainBloc
    extends Bloc<BasicInformationMainEvent, BasicInformationMainState> {
  BasicInformationMainBloc(BasicInformationMainState initialState)
      : super(initialState) {
    on<BasicInformationMainInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<BasicInformationMainState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<BasicInformationMainState> emit,
  ) {
    emit(state.copyWith(
      yes: event.value,
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
    BasicInformationMainInitialEvent event,
    Emitter<BasicInformationMainState> emit,
  ) async {
    emit(state.copyWith(
      fullNameController: TextEditingController(),
      dateOfBirthController: TextEditingController(),
      emailController: TextEditingController(),
      nameController: TextEditingController(),
      dateOfBirthController1: TextEditingController(),
      fewwordsforyourController: TextEditingController(),
      selfemployedController: TextEditingController(),
      yes: false,
    ));
    emit(state.copyWith(
        basicInformationMainModelObj:
            state.basicInformationMainModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }
}
