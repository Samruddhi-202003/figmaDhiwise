// ignore_for_file: must_be_immutable

part of 'android_large_eleven_bloc.dart';

/// Represents the state of AndroidLargeEleven in the application.
class AndroidLargeElevenState extends Equatable {
  AndroidLargeElevenState({
    this.emergancyfundController,
    this.groupEightySixController,
    this.isSelectedSwitch = false,
    this.androidLargeElevenModelObj,
  });

  TextEditingController? emergancyfundController;

  TextEditingController? groupEightySixController;

  AndroidLargeElevenModel? androidLargeElevenModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        emergancyfundController,
        groupEightySixController,
        isSelectedSwitch,
        androidLargeElevenModelObj,
      ];
  AndroidLargeElevenState copyWith({
    TextEditingController? emergancyfundController,
    TextEditingController? groupEightySixController,
    bool? isSelectedSwitch,
    AndroidLargeElevenModel? androidLargeElevenModelObj,
  }) {
    return AndroidLargeElevenState(
      emergancyfundController:
          emergancyfundController ?? this.emergancyfundController,
      groupEightySixController:
          groupEightySixController ?? this.groupEightySixController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      androidLargeElevenModelObj:
          androidLargeElevenModelObj ?? this.androidLargeElevenModelObj,
    );
  }
}
