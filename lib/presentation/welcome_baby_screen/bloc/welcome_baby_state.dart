// ignore_for_file: must_be_immutable

part of 'welcome_baby_bloc.dart';

/// Represents the state of WelcomeBaby in the application.
class WelcomeBabyState extends Equatable {
  WelcomeBabyState({
    this.welcomingourController,
    this.isSelectedSwitch = false,
    this.welcomeBabyModelObj,
  });

  TextEditingController? welcomingourController;

  WelcomeBabyModel? welcomeBabyModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        welcomingourController,
        isSelectedSwitch,
        welcomeBabyModelObj,
      ];
  WelcomeBabyState copyWith({
    TextEditingController? welcomingourController,
    bool? isSelectedSwitch,
    WelcomeBabyModel? welcomeBabyModelObj,
  }) {
    return WelcomeBabyState(
      welcomingourController:
          welcomingourController ?? this.welcomingourController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      welcomeBabyModelObj: welcomeBabyModelObj ?? this.welcomeBabyModelObj,
    );
  }
}
