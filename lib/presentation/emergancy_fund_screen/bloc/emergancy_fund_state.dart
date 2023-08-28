// ignore_for_file: must_be_immutable

part of 'emergancy_fund_bloc.dart';

/// Represents the state of EmergancyFund in the application.
class EmergancyFundState extends Equatable {
  EmergancyFundState({
    this.emergancyfundController,
    this.isSelectedSwitch = false,
    this.emergancyFundModelObj,
  });

  TextEditingController? emergancyfundController;

  EmergancyFundModel? emergancyFundModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        emergancyfundController,
        isSelectedSwitch,
        emergancyFundModelObj,
      ];
  EmergancyFundState copyWith({
    TextEditingController? emergancyfundController,
    bool? isSelectedSwitch,
    EmergancyFundModel? emergancyFundModelObj,
  }) {
    return EmergancyFundState(
      emergancyfundController:
          emergancyfundController ?? this.emergancyfundController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      emergancyFundModelObj:
          emergancyFundModelObj ?? this.emergancyFundModelObj,
    );
  }
}
