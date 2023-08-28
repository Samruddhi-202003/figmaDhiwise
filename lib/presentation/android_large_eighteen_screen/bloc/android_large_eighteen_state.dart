// ignore_for_file: must_be_immutable

part of 'android_large_eighteen_bloc.dart';

/// Represents the state of AndroidLargeEighteen in the application.
class AndroidLargeEighteenState extends Equatable {
  AndroidLargeEighteenState({
    this.calendaroneController,
    this.calendaroneController1,
    this.androidLargeEighteenModelObj,
  });

  TextEditingController? calendaroneController;

  TextEditingController? calendaroneController1;

  AndroidLargeEighteenModel? androidLargeEighteenModelObj;

  @override
  List<Object?> get props => [
        calendaroneController,
        calendaroneController1,
        androidLargeEighteenModelObj,
      ];
  AndroidLargeEighteenState copyWith({
    TextEditingController? calendaroneController,
    TextEditingController? calendaroneController1,
    AndroidLargeEighteenModel? androidLargeEighteenModelObj,
  }) {
    return AndroidLargeEighteenState(
      calendaroneController:
          calendaroneController ?? this.calendaroneController,
      calendaroneController1:
          calendaroneController1 ?? this.calendaroneController1,
      androidLargeEighteenModelObj:
          androidLargeEighteenModelObj ?? this.androidLargeEighteenModelObj,
    );
  }
}
