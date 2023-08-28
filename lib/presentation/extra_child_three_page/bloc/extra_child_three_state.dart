// ignore_for_file: must_be_immutable

part of 'extra_child_three_bloc.dart';

/// Represents the state of ExtraChildThree in the application.
class ExtraChildThreeState extends Equatable {
  ExtraChildThreeState({
    this.fullNameController,
    this.dateOfBirthController,
    this.emailController,
    this.nameController,
    this.dateOfBirthController1,
    this.spouseDescriptiController,
    this.professionvalueController,
    this.selectedDropDownValue,
    this.englishYes = false,
    this.extraChildThreeModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? dateOfBirthController;

  TextEditingController? emailController;

  TextEditingController? nameController;

  TextEditingController? dateOfBirthController1;

  TextEditingController? spouseDescriptiController;

  TextEditingController? professionvalueController;

  SelectionPopupModel? selectedDropDownValue;

  ExtraChildThreeModel? extraChildThreeModelObj;

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
        extraChildThreeModelObj,
      ];
  ExtraChildThreeState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? dateOfBirthController,
    TextEditingController? emailController,
    TextEditingController? nameController,
    TextEditingController? dateOfBirthController1,
    TextEditingController? spouseDescriptiController,
    TextEditingController? professionvalueController,
    SelectionPopupModel? selectedDropDownValue,
    bool? englishYes,
    ExtraChildThreeModel? extraChildThreeModelObj,
  }) {
    return ExtraChildThreeState(
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
      extraChildThreeModelObj:
          extraChildThreeModelObj ?? this.extraChildThreeModelObj,
    );
  }
}
