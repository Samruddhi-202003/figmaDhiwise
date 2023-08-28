// ignore_for_file: must_be_immutable

part of 'extra_child_one_bloc.dart';

/// Represents the state of ExtraChildOne in the application.
class ExtraChildOneState extends Equatable {
  ExtraChildOneState({
    this.fullNameController,
    this.dateOfBirthController,
    this.emailController,
    this.nameController,
    this.dateOfBirthController1,
    this.fewwordsforyourController,
    this.selfemployedController,
    this.selectedDropDownValue,
    this.yes = false,
    this.extraChildOneModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? dateOfBirthController;

  TextEditingController? emailController;

  TextEditingController? nameController;

  TextEditingController? dateOfBirthController1;

  TextEditingController? fewwordsforyourController;

  TextEditingController? selfemployedController;

  SelectionPopupModel? selectedDropDownValue;

  ExtraChildOneModel? extraChildOneModelObj;

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
        extraChildOneModelObj,
      ];
  ExtraChildOneState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? dateOfBirthController,
    TextEditingController? emailController,
    TextEditingController? nameController,
    TextEditingController? dateOfBirthController1,
    TextEditingController? fewwordsforyourController,
    TextEditingController? selfemployedController,
    SelectionPopupModel? selectedDropDownValue,
    bool? yes,
    ExtraChildOneModel? extraChildOneModelObj,
  }) {
    return ExtraChildOneState(
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
      extraChildOneModelObj:
          extraChildOneModelObj ?? this.extraChildOneModelObj,
    );
  }
}
