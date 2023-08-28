// ignore_for_file: must_be_immutable

part of 'android_large_fourteen_bloc.dart';

/// Represents the state of AndroidLargeFourteen in the application.
class AndroidLargeFourteenState extends Equatable {
  AndroidLargeFourteenState({
    this.isSelectedSwitch = false,
    this.androidLargeFourteenModelObj,
  });

  AndroidLargeFourteenModel? androidLargeFourteenModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        androidLargeFourteenModelObj,
      ];
  AndroidLargeFourteenState copyWith({
    bool? isSelectedSwitch,
    AndroidLargeFourteenModel? androidLargeFourteenModelObj,
  }) {
    return AndroidLargeFourteenState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      androidLargeFourteenModelObj:
          androidLargeFourteenModelObj ?? this.androidLargeFourteenModelObj,
    );
  }
}
