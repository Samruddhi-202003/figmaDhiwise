// ignore_for_file: must_be_immutable

part of 'basic_information_three_bloc.dart';

/// Represents the state of BasicInformationThree in the application.
class BasicInformationThreeState extends Equatable {
  BasicInformationThreeState({
    this.fullNameController,
    this.dateOfBirthController,
    this.emailController,
    this.nameController,
    this.dateOfBirthController1,
    this.fewwordsforyourController,
    this.selfemployedController,
    this.selectedDropDownValue,
    this.yes = false,
    this.basicInformationThreeModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? dateOfBirthController;

  TextEditingController? emailController;

  TextEditingController? nameController;

  TextEditingController? dateOfBirthController1;

  TextEditingController? fewwordsforyourController;

  TextEditingController? selfemployedController;

  SelectionPopupModel? selectedDropDownValue;

  BasicInformationThreeModel? basicInformationThreeModelObj;

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
        basicInformationThreeModelObj,
      ];
  BasicInformationThreeState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? dateOfBirthController,
    TextEditingController? emailController,
    TextEditingController? nameController,
    TextEditingController? dateOfBirthController1,
    TextEditingController? fewwordsforyourController,
    TextEditingController? selfemployedController,
    SelectionPopupModel? selectedDropDownValue,
    bool? yes,
    BasicInformationThreeModel? basicInformationThreeModelObj,
  }) {
    return BasicInformationThreeState(
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
      basicInformationThreeModelObj:
          basicInformationThreeModelObj ?? this.basicInformationThreeModelObj,
    );
  }
}
