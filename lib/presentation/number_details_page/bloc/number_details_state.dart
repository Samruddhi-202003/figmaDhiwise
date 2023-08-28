// ignore_for_file: must_be_immutable

part of 'number_details_bloc.dart';

/// Represents the state of NumberDetails in the application.
class NumberDetailsState extends Equatable {
  NumberDetailsState({this.numberDetailsModelObj});

  NumberDetailsModel? numberDetailsModelObj;

  @override
  List<Object?> get props => [
        numberDetailsModelObj,
      ];
  NumberDetailsState copyWith({NumberDetailsModel? numberDetailsModelObj}) {
    return NumberDetailsState(
      numberDetailsModelObj:
          numberDetailsModelObj ?? this.numberDetailsModelObj,
    );
  }
}
