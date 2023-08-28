// ignore_for_file: must_be_immutable

part of 'edit_basic_profile_bloc.dart';

/// Represents the state of EditBasicProfile in the application.
class EditBasicProfileState extends Equatable {
  EditBasicProfileState({
    this.emailController,
    this.spouseDescriptiController,
    this.englishYes = false,
    this.editBasicProfileModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? spouseDescriptiController;

  EditBasicProfileModel? editBasicProfileModelObj;

  bool englishYes;

  @override
  List<Object?> get props => [
        emailController,
        spouseDescriptiController,
        englishYes,
        editBasicProfileModelObj,
      ];
  EditBasicProfileState copyWith({
    TextEditingController? emailController,
    TextEditingController? spouseDescriptiController,
    bool? englishYes,
    EditBasicProfileModel? editBasicProfileModelObj,
  }) {
    return EditBasicProfileState(
      emailController: emailController ?? this.emailController,
      spouseDescriptiController:
          spouseDescriptiController ?? this.spouseDescriptiController,
      englishYes: englishYes ?? this.englishYes,
      editBasicProfileModelObj:
          editBasicProfileModelObj ?? this.editBasicProfileModelObj,
    );
  }
}
