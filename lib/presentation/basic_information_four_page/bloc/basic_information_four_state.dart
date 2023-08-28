// ignore_for_file: must_be_immutable

part of 'basic_information_four_bloc.dart';

/// Represents the state of BasicInformationFour in the application.
class BasicInformationFourState extends Equatable {
  BasicInformationFourState({
    this.fullNameController,
    this.dateOfBirthController,
    this.emailController,
    this.nameController,
    this.dateOfBirthController1,
    this.spouseDescriptiController,
    this.professionvalueController,
    this.selectedDropDownValue,
    this.englishYes = false,
    this.basicInformationFourModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? dateOfBirthController;

  TextEditingController? emailController;

  TextEditingController? nameController;

  TextEditingController? dateOfBirthController1;

  TextEditingController? spouseDescriptiController;

  TextEditingController? professionvalueController;

  SelectionPopupModel? selectedDropDownValue;

  BasicInformationFourModel? basicInformationFourModelObj;

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
        basicInformationFourModelObj,
      ];
  BasicInformationFourState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? dateOfBirthController,
    TextEditingController? emailController,
    TextEditingController? nameController,
    TextEditingController? dateOfBirthController1,
    TextEditingController? spouseDescriptiController,
    TextEditingController? professionvalueController,
    SelectionPopupModel? selectedDropDownValue,
    bool? englishYes,
    BasicInformationFourModel? basicInformationFourModelObj,
  }) {
    return BasicInformationFourState(
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
      basicInformationFourModelObj:
          basicInformationFourModelObj ?? this.basicInformationFourModelObj,
    );
  }
}
