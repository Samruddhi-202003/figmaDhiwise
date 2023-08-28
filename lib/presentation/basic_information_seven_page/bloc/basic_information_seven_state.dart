// ignore_for_file: must_be_immutable

part of 'basic_information_seven_bloc.dart';

/// Represents the state of BasicInformationSeven in the application.
class BasicInformationSevenState extends Equatable {
  BasicInformationSevenState({
    this.fullNameController,
    this.dateOfBirthController,
    this.emailController,
    this.nameController,
    this.dateOfBirthController1,
    this.spouseDescriptiController,
    this.professionvalueController,
    this.selectedDropDownValue,
    this.englishYes = false,
    this.basicInformationSevenModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? dateOfBirthController;

  TextEditingController? emailController;

  TextEditingController? nameController;

  TextEditingController? dateOfBirthController1;

  TextEditingController? spouseDescriptiController;

  TextEditingController? professionvalueController;

  SelectionPopupModel? selectedDropDownValue;

  BasicInformationSevenModel? basicInformationSevenModelObj;

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
        basicInformationSevenModelObj,
      ];
  BasicInformationSevenState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? dateOfBirthController,
    TextEditingController? emailController,
    TextEditingController? nameController,
    TextEditingController? dateOfBirthController1,
    TextEditingController? spouseDescriptiController,
    TextEditingController? professionvalueController,
    SelectionPopupModel? selectedDropDownValue,
    bool? englishYes,
    BasicInformationSevenModel? basicInformationSevenModelObj,
  }) {
    return BasicInformationSevenState(
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
      basicInformationSevenModelObj:
          basicInformationSevenModelObj ?? this.basicInformationSevenModelObj,
    );
  }
}
