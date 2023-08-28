// ignore_for_file: must_be_immutable

part of 'android_large_fifteen_bloc.dart';

/// Represents the state of AndroidLargeFifteen in the application.
class AndroidLargeFifteenState extends Equatable {
  AndroidLargeFifteenState({
    this.isSelectedSwitch = false,
    this.androidLargeFifteenModelObj,
  });

  AndroidLargeFifteenModel? androidLargeFifteenModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        androidLargeFifteenModelObj,
      ];
  AndroidLargeFifteenState copyWith({
    bool? isSelectedSwitch,
    AndroidLargeFifteenModel? androidLargeFifteenModelObj,
  }) {
    return AndroidLargeFifteenState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      androidLargeFifteenModelObj:
          androidLargeFifteenModelObj ?? this.androidLargeFifteenModelObj,
    );
  }
}
