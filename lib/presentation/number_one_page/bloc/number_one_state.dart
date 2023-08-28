// ignore_for_file: must_be_immutable

part of 'number_one_bloc.dart';

/// Represents the state of NumberOne in the application.
class NumberOneState extends Equatable {
  NumberOneState({this.numberOneModelObj});

  NumberOneModel? numberOneModelObj;

  @override
  List<Object?> get props => [
        numberOneModelObj,
      ];
  NumberOneState copyWith({NumberOneModel? numberOneModelObj}) {
    return NumberOneState(
      numberOneModelObj: numberOneModelObj ?? this.numberOneModelObj,
    );
  }
}
