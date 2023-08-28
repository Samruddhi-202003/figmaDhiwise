// ignore_for_file: must_be_immutable

part of 'no_married_bloc.dart';

/// Represents the state of NoMarried in the application.
class NoMarriedState extends Equatable {
  NoMarriedState({
    this.fullNameController,
    this.dateOfBirthController,
    this.emailController,
    this.doyouhaveaownController,
    this.selectedDropDownValue,
    this.yes = false,
    this.yesone = false,
    this.noMarriedModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? dateOfBirthController;

  TextEditingController? emailController;

  TextEditingController? doyouhaveaownController;

  SelectionPopupModel? selectedDropDownValue;

  NoMarriedModel? noMarriedModelObj;

  bool yes;

  bool yesone;

  @override
  List<Object?> get props => [
        fullNameController,
        dateOfBirthController,
        emailController,
        doyouhaveaownController,
        selectedDropDownValue,
        yes,
        yesone,
        noMarriedModelObj,
      ];
  NoMarriedState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? dateOfBirthController,
    TextEditingController? emailController,
    TextEditingController? doyouhaveaownController,
    SelectionPopupModel? selectedDropDownValue,
    bool? yes,
    bool? yesone,
    NoMarriedModel? noMarriedModelObj,
  }) {
    return NoMarriedState(
      fullNameController: fullNameController ?? this.fullNameController,
      dateOfBirthController:
          dateOfBirthController ?? this.dateOfBirthController,
      emailController: emailController ?? this.emailController,
      doyouhaveaownController:
          doyouhaveaownController ?? this.doyouhaveaownController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      yes: yes ?? this.yes,
      yesone: yesone ?? this.yesone,
      noMarriedModelObj: noMarriedModelObj ?? this.noMarriedModelObj,
    );
  }
}
