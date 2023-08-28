// ignore_for_file: must_be_immutable

part of 'android_large_ten_bloc.dart';

/// Represents the state of AndroidLargeTen in the application.
class AndroidLargeTenState extends Equatable {
  AndroidLargeTenState({
    this.emergancyfundController,
    this.isSelectedSwitch = false,
    this.androidLargeTenModelObj,
  });

  TextEditingController? emergancyfundController;

  AndroidLargeTenModel? androidLargeTenModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        emergancyfundController,
        isSelectedSwitch,
        androidLargeTenModelObj,
      ];
  AndroidLargeTenState copyWith({
    TextEditingController? emergancyfundController,
    bool? isSelectedSwitch,
    AndroidLargeTenModel? androidLargeTenModelObj,
  }) {
    return AndroidLargeTenState(
      emergancyfundController:
          emergancyfundController ?? this.emergancyfundController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      androidLargeTenModelObj:
          androidLargeTenModelObj ?? this.androidLargeTenModelObj,
    );
  }
}
