// ignore_for_file: must_be_immutable

part of 'basic_information_three_tab_container_bloc.dart';

/// Represents the state of BasicInformationThreeTabContainer in the application.
class BasicInformationThreeTabContainerState extends Equatable {
  BasicInformationThreeTabContainerState(
      {this.basicInformationThreeTabContainerModelObj});

  BasicInformationThreeTabContainerModel?
      basicInformationThreeTabContainerModelObj;

  @override
  List<Object?> get props => [
        basicInformationThreeTabContainerModelObj,
      ];
  BasicInformationThreeTabContainerState copyWith(
      {BasicInformationThreeTabContainerModel?
          basicInformationThreeTabContainerModelObj}) {
    return BasicInformationThreeTabContainerState(
      basicInformationThreeTabContainerModelObj:
          basicInformationThreeTabContainerModelObj ??
              this.basicInformationThreeTabContainerModelObj,
    );
  }
}
