// ignore_for_file: must_be_immutable

part of 'basic_information_eight_bloc.dart';

/// Represents the state of BasicInformationEight in the application.
class BasicInformationEightState extends Equatable {
  BasicInformationEightState({
    this.fullNameController,
    this.dateOfBirthController,
    this.emailController,
    this.nameController,
    this.dateOfBirthController1,
    this.spouseDescriptiController,
    this.professionvalueController,
    this.selectedDropDownValue,
    this.englishYes = false,
    this.basicInformationEightModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? dateOfBirthController;

  TextEditingController? emailController;

  TextEditingController? nameController;

  TextEditingController? dateOfBirthController1;

  TextEditingController? spouseDescriptiController;

  TextEditingController? professionvalueController;

  SelectionPopupModel? selectedDropDownValue;

  BasicInformationEightModel? basicInformationEightModelObj;

  bool englishYes;

  @override
  List<Object?> get props => [
        fullNameController,
        dateOfBirthController,
        emailController,
        nameController,
        dateOfBirthController1,
        spouseDescriptiController,
        professionvalueController,
        selectedDropDownValue,
        englishYes,
        basicInformationEightModelObj,
      ];
  BasicInformationEightState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? dateOfBirthController,
    TextEditingController? emailController,
    TextEditingController? nameController,
    TextEditingController? dateOfBirthController1,
    TextEditingController? spouseDescriptiController,
    TextEditingController? professionvalueController,
    SelectionPopupModel? selectedDropDownValue,
    bool? englishYes,
    BasicInformationEightModel? basicInformationEightModelObj,
  }) {
    return BasicInformationEightState(
      fullNameController: fullNameController ?? this.fullNameController,
      dateOfBirthController:
          dateOfBirthController ?? this.dateOfBirthController,
      emailController: emailController ?? this.emailController,
      nameController: nameController ?? this.nameController,
      dateOfBirthController1:
          dateOfBirthController1 ?? this.dateOfBirthController1,
      spouseDescriptiController:
          spouseDescriptiController ?? this.spouseDescriptiController,
      professionvalueController:
          professionvalueController ?? this.professionvalueController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      englishYes: englishYes ?? this.englishYes,
      basicInformationEightModelObj:
          basicInformationEightModelObj ?? this.basicInformationEightModelObj,
    );
  }
}
