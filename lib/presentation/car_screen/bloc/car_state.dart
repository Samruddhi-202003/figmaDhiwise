// ignore_for_file: must_be_immutable

part of 'car_bloc.dart';

/// Represents the state of Car in the application.
class CarState extends Equatable {
  CarState({
    this.isSelectedSwitch = false,
    this.carModelObj,
  });

  CarModel? carModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        carModelObj,
      ];
  CarState copyWith({
    bool? isSelectedSwitch,
    CarModel? carModelObj,
  }) {
    return CarState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      carModelObj: carModelObj ?? this.carModelObj,
    );
  }
}
