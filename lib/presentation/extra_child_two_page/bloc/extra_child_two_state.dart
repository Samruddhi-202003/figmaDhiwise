// ignore_for_file: must_be_immutable

part of 'extra_child_two_bloc.dart';

/// Represents the state of ExtraChildTwo in the application.
class ExtraChildTwoState extends Equatable {
  ExtraChildTwoState({
    this.fullNameController,
    this.dateOfBirthController,
    this.emailController,
    this.nameController,
    this.dateOfBirthController1,
    this.fewWordsForSpouController,
    this.professionvalueController,
    this.selectedDropDownValue,
    this.englishYes = false,
    this.extraChildTwoModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? dateOfBirthController;

  TextEditingController? emailController;

  TextEditingController? nameController;

  TextEditingController? dateOfBirthController1;

  TextEditingController? fewWordsForSpouController;

  TextEditingController? professionvalueController;

  SelectionPopupModel? selectedDropDownValue;

  ExtraChildTwoModel? extraChildTwoModelObj;

  bool englishYes;

  @override
  List<Object?> get props => [
        fullNameController,
        dateOfBirthController,
        emailController,
        nameController,
        dateOfBirthController1,
        fewWordsForSpouController,
        professionvalueController,
        selectedDropDownValue,
        englishYes,
        extraChildTwoModelObj,
      ];
  ExtraChildTwoState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? dateOfBirthController,
    TextEditingController? emailController,
    TextEditingController? nameController,
    TextEditingController? dateOfBirthController1,
    TextEditingController? fewWordsForSpouController,
    TextEditingController? professionvalueController,
    SelectionPopupModel? selectedDropDownValue,
    bool? englishYes,
    ExtraChildTwoModel? extraChildTwoModelObj,
  }) {
    return ExtraChildTwoState(
      fullNameController: fullNameController ?? this.fullNameController,
      dateOfBirthController:
          dateOfBirthController ?? this.dateOfBirthController,
      emailController: emailController ?? this.emailController,
      nameController: nameController ?? this.nameController,
      dateOfBirthController1:
          dateOfBirthController1 ?? this.dateOfBirthController1,
      fewWordsForSpouController:
          fewWordsForSpouController ?? this.fewWordsForSpouController,
      professionvalueController:
          professionvalueController ?? this.professionvalueController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      englishYes: englishYes ?? this.englishYes,
      extraChildTwoModelObj:
          extraChildTwoModelObj ?? this.extraChildTwoModelObj,
    );
  }
}
