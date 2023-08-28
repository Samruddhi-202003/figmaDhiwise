// ignore_for_file: must_be_immutable

part of 'android_large_sixteen_bloc.dart';

/// Represents the state of AndroidLargeSixteen in the application.
class AndroidLargeSixteenState extends Equatable {
  AndroidLargeSixteenState({
    this.isSelectedSwitch = false,
    this.androidLargeSixteenModelObj,
  });

  AndroidLargeSixteenModel? androidLargeSixteenModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        androidLargeSixteenModelObj,
      ];
  AndroidLargeSixteenState copyWith({
    bool? isSelectedSwitch,
    AndroidLargeSixteenModel? androidLargeSixteenModelObj,
  }) {
    return AndroidLargeSixteenState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      androidLargeSixteenModelObj:
          androidLargeSixteenModelObj ?? this.androidLargeSixteenModelObj,
    );
  }
}
