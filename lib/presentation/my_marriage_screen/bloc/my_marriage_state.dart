// ignore_for_file: must_be_immutable

part of 'my_marriage_bloc.dart';

/// Represents the state of MyMarriage in the application.
class MyMarriageState extends Equatable {
  MyMarriageState({
    this.mymarriageController,
    this.isSelectedSwitch = false,
    this.myMarriageModelObj,
  });

  TextEditingController? mymarriageController;

  MyMarriageModel? myMarriageModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        mymarriageController,
        isSelectedSwitch,
        myMarriageModelObj,
      ];
  MyMarriageState copyWith({
    TextEditingController? mymarriageController,
    bool? isSelectedSwitch,
    MyMarriageModel? myMarriageModelObj,
  }) {
    return MyMarriageState(
      mymarriageController: mymarriageController ?? this.mymarriageController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      myMarriageModelObj: myMarriageModelObj ?? this.myMarriageModelObj,
    );
  }
}
