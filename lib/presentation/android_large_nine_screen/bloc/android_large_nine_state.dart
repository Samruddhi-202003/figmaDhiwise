// ignore_for_file: must_be_immutable

part of 'android_large_nine_bloc.dart';

/// Represents the state of AndroidLargeNine in the application.
class AndroidLargeNineState extends Equatable {
  AndroidLargeNineState({
    this.isSelectedSwitch = false,
    this.androidLargeNineModelObj,
  });

  AndroidLargeNineModel? androidLargeNineModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        androidLargeNineModelObj,
      ];
  AndroidLargeNineState copyWith({
    bool? isSelectedSwitch,
    AndroidLargeNineModel? androidLargeNineModelObj,
  }) {
    return AndroidLargeNineState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      androidLargeNineModelObj:
          androidLargeNineModelObj ?? this.androidLargeNineModelObj,
    );
  }
}
