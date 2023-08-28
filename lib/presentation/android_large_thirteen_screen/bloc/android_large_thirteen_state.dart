// ignore_for_file: must_be_immutable

part of 'android_large_thirteen_bloc.dart';

/// Represents the state of AndroidLargeThirteen in the application.
class AndroidLargeThirteenState extends Equatable {
  AndroidLargeThirteenState({
    this.isSelectedSwitch = false,
    this.androidLargeThirteenModelObj,
  });

  AndroidLargeThirteenModel? androidLargeThirteenModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        androidLargeThirteenModelObj,
      ];
  AndroidLargeThirteenState copyWith({
    bool? isSelectedSwitch,
    AndroidLargeThirteenModel? androidLargeThirteenModelObj,
  }) {
    return AndroidLargeThirteenState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      androidLargeThirteenModelObj:
          androidLargeThirteenModelObj ?? this.androidLargeThirteenModelObj,
    );
  }
}
