// ignore_for_file: must_be_immutable

part of 'android_large_twelve_bloc.dart';

/// Represents the state of AndroidLargeTwelve in the application.
class AndroidLargeTwelveState extends Equatable {
  AndroidLargeTwelveState({
    this.isSelectedSwitch = false,
    this.androidLargeTwelveModelObj,
  });

  AndroidLargeTwelveModel? androidLargeTwelveModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        androidLargeTwelveModelObj,
      ];
  AndroidLargeTwelveState copyWith({
    bool? isSelectedSwitch,
    AndroidLargeTwelveModel? androidLargeTwelveModelObj,
  }) {
    return AndroidLargeTwelveState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      androidLargeTwelveModelObj:
          androidLargeTwelveModelObj ?? this.androidLargeTwelveModelObj,
    );
  }
}
