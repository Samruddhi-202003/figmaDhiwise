// ignore_for_file: must_be_immutable

part of 'no_married_two_bloc.dart';

/// Represents the state of NoMarriedTwo in the application.
class NoMarriedTwoState extends Equatable {
  NoMarriedTwoState({
    this.fullNameController,
    this.dateOfBirthController,
    this.emailController,
    this.doyouhaveaownController,
    this.selectedDropDownValue,
    this.englishYes = false,
    this.noMarriedTwoModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? dateOfBirthController;

  TextEditingController? emailController;

  TextEditingController? doyouhaveaownController;

  SelectionPopupModel? selectedDropDownValue;

  NoMarriedTwoModel? noMarriedTwoModelObj;

  bool englishYes;

  @override
  List<Object?> get props => [
        fullNameController,
        dateOfBirthController,
        emailController,
        doyouhaveaownController,
        selectedDropDownValue,
        englishYes,
        noMarriedTwoModelObj,
      ];
  NoMarriedTwoState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? dateOfBirthController,
    TextEditingController? emailController,
    TextEditingController? doyouhaveaownController,
    SelectionPopupModel? selectedDropDownValue,
    bool? englishYes,
    NoMarriedTwoModel? noMarriedTwoModelObj,
  }) {
    return NoMarriedTwoState(
      fullNameController: fullNameController ?? this.fullNameController,
      dateOfBirthController:
          dateOfBirthController ?? this.dateOfBirthController,
      emailController: emailController ?? this.emailController,
      doyouhaveaownController:
          doyouhaveaownController ?? this.doyouhaveaownController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      englishYes: englishYes ?? this.englishYes,
      noMarriedTwoModelObj: noMarriedTwoModelObj ?? this.noMarriedTwoModelObj,
    );
  }
}
