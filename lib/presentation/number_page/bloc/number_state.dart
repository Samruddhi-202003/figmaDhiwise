// ignore_for_file: must_be_immutable

part of 'number_bloc.dart';

/// Represents the state of Number in the application.
class NumberState extends Equatable {
  NumberState({this.numberModelObj});

  NumberModel? numberModelObj;

  @override
  List<Object?> get props => [
        numberModelObj,
      ];
  NumberState copyWith({NumberModel? numberModelObj}) {
    return NumberState(
      numberModelObj: numberModelObj ?? this.numberModelObj,
    );
  }
}
