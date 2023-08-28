// ignore_for_file: must_be_immutable

part of 'information_two_bloc.dart';

/// Represents the state of InformationTwo in the application.
class InformationTwoState extends Equatable {
  InformationTwoState({this.informationTwoModelObj});

  InformationTwoModel? informationTwoModelObj;

  @override
  List<Object?> get props => [
        informationTwoModelObj,
      ];
  InformationTwoState copyWith({InformationTwoModel? informationTwoModelObj}) {
    return InformationTwoState(
      informationTwoModelObj:
          informationTwoModelObj ?? this.informationTwoModelObj,
    );
  }
}
