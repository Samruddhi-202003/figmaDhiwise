// ignore_for_file: must_be_immutable

part of 'basic_information_main_bloc.dart';

/// Represents the state of BasicInformationMain in the application.
class BasicInformationMainState extends Equatable {
  BasicInformationMainState({
    this.fullNameController,
    this.dateOfBirthController,
    this.emailController,
    this.nameController,
    this.dateOfBirthController1,
    this.fewwordsforyourController,
    this.selfemployedController,
    this.selectedDropDownValue,
    this.yes = false,
    this.basicInformationMainModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? dateOfBirthController;

  TextEditingController? emailController;

  TextEditingController? nameController;

  TextEditingController? dateOfBirthController1;

  TextEditingController? fewwordsforyourController;

  TextEditingController? selfemployedController;

  SelectionPopupModel? selectedDropDownValue;

  BasicInformationMainModel? basicInformationMainModelObj;

  bool yes;

  @override
  List<Object?> get props => [
        fullNameController,
        dateOfBirthController,
        emailController,
        nameController,
        dateOfBirthController1,
        fewwordsforyourController,
        selfemployedController,
        selectedDropDownValue,
        yes,
        basicInformationMainModelObj,
      ];
  BasicInformationMainState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? dateOfBirthController,
    TextEditingController? emailController,
    TextEditingController? nameController,
    TextEditingController? dateOfBirthController1,
    TextEditingController? fewwordsforyourController,
    TextEditingController? selfemployedController,
    SelectionPopupModel? selectedDropDownValue,
    bool? yes,
    BasicInformationMainModel? basicInformationMainModelObj,
  }) {
    return BasicInformationMainState(
      fullNameController: fullNameController ?? this.fullNameController,
      dateOfBirthController:
          dateOfBirthController ?? this.dateOfBirthController,
      emailController: emailController ?? this.emailController,
      nameController: nameController ?? this.nameController,
      dateOfBirthController1:
          dateOfBirthController1 ?? this.dateOfBirthController1,
      fewwordsforyourController:
          fewwordsforyourController ?? this.fewwordsforyourController,
      selfemployedController:
          selfemployedController ?? this.selfemployedController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      yes: yes ?? this.yes,
      basicInformationMainModelObj:
          basicInformationMainModelObj ?? this.basicInformationMainModelObj,
    );
  }
}
