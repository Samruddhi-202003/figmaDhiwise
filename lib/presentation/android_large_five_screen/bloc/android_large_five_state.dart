// ignore_for_file: must_be_immutable

part of 'android_large_five_bloc.dart';

/// Represents the state of AndroidLargeFive in the application.
class AndroidLargeFiveState extends Equatable {
  AndroidLargeFiveState({
    this.radioGroup = "",
    this.radioGroup1 = "",
    this.homebike = "",
    this.androidLargeFiveModelObj,
  });

  AndroidLargeFiveModel? androidLargeFiveModelObj;

  String radioGroup;

  String radioGroup1;

  String homebike;

  @override
  List<Object?> get props => [
        radioGroup,
        radioGroup1,
        homebike,
        androidLargeFiveModelObj,
      ];
  AndroidLargeFiveState copyWith({
    String? radioGroup,
    String? radioGroup1,
    String? homebike,
    AndroidLargeFiveModel? androidLargeFiveModelObj,
  }) {
    return AndroidLargeFiveState(
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      homebike: homebike ?? this.homebike,
      androidLargeFiveModelObj:
          androidLargeFiveModelObj ?? this.androidLargeFiveModelObj,
    );
  }
}
