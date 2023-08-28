// ignore_for_file: must_be_immutable

part of 'android_large_eight_bloc.dart';

/// Represents the state of AndroidLargeEight in the application.
class AndroidLargeEightState extends Equatable {
  AndroidLargeEightState({
    this.isSelectedSwitch = false,
    this.androidLargeEightModelObj,
  });

  AndroidLargeEightModel? androidLargeEightModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        androidLargeEightModelObj,
      ];
  AndroidLargeEightState copyWith({
    bool? isSelectedSwitch,
    AndroidLargeEightModel? androidLargeEightModelObj,
  }) {
    return AndroidLargeEightState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      androidLargeEightModelObj:
          androidLargeEightModelObj ?? this.androidLargeEightModelObj,
    );
  }
}
