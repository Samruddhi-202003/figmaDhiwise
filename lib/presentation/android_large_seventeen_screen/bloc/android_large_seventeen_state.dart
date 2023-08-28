// ignore_for_file: must_be_immutable

part of 'android_large_seventeen_bloc.dart';

/// Represents the state of AndroidLargeSeventeen in the application.
class AndroidLargeSeventeenState extends Equatable {
  AndroidLargeSeventeenState({
    this.calendaroneController,
    this.calendaroneController1,
    this.androidLargeSeventeenModelObj,
  });

  TextEditingController? calendaroneController;

  TextEditingController? calendaroneController1;

  AndroidLargeSeventeenModel? androidLargeSeventeenModelObj;

  @override
  List<Object?> get props => [
        calendaroneController,
        calendaroneController1,
        androidLargeSeventeenModelObj,
      ];
  AndroidLargeSeventeenState copyWith({
    TextEditingController? calendaroneController,
    TextEditingController? calendaroneController1,
    AndroidLargeSeventeenModel? androidLargeSeventeenModelObj,
  }) {
    return AndroidLargeSeventeenState(
      calendaroneController:
          calendaroneController ?? this.calendaroneController,
      calendaroneController1:
          calendaroneController1 ?? this.calendaroneController1,
      androidLargeSeventeenModelObj:
          androidLargeSeventeenModelObj ?? this.androidLargeSeventeenModelObj,
    );
  }
}
