// ignore_for_file: must_be_immutable

part of 'information_one_bloc.dart';

/// Represents the state of InformationOne in the application.
class InformationOneState extends Equatable {
  InformationOneState({this.informationOneModelObj});

  InformationOneModel? informationOneModelObj;

  @override
  List<Object?> get props => [
        informationOneModelObj,
      ];
  InformationOneState copyWith({InformationOneModel? informationOneModelObj}) {
    return InformationOneState(
      informationOneModelObj:
          informationOneModelObj ?? this.informationOneModelObj,
    );
  }
}
