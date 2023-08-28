// ignore_for_file: must_be_immutable

part of 'no_married_one_bloc.dart';

/// Represents the state of NoMarriedOne in the application.
class NoMarriedOneState extends Equatable {
  NoMarriedOneState({
    this.fullNameController,
    this.dateOfBirthController,
    this.emailController,
    this.selectedDropDownValue,
    this.noMarriedOneModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? dateOfBirthController;

  TextEditingController? emailController;

  SelectionPopupModel? selectedDropDownValue;

  NoMarriedOneModel? noMarriedOneModelObj;

  @override
  List<Object?> get props => [
        fullNameController,
        dateOfBirthController,
        emailController,
        selectedDropDownValue,
        noMarriedOneModelObj,
      ];
  NoMarriedOneState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? dateOfBirthController,
    TextEditingController? emailController,
    SelectionPopupModel? selectedDropDownValue,
    NoMarriedOneModel? noMarriedOneModelObj,
  }) {
    return NoMarriedOneState(
      fullNameController: fullNameController ?? this.fullNameController,
      dateOfBirthController:
          dateOfBirthController ?? this.dateOfBirthController,
      emailController: emailController ?? this.emailController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      noMarriedOneModelObj: noMarriedOneModelObj ?? this.noMarriedOneModelObj,
    );
  }
}
