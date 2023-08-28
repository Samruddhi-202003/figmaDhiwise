// ignore_for_file: must_be_immutable

part of 'dashboard_two_bloc.dart';

/// Represents the state of DashboardTwo in the application.
class DashboardTwoState extends Equatable {
  DashboardTwoState({this.dashboardTwoModelObj});

  DashboardTwoModel? dashboardTwoModelObj;

  @override
  List<Object?> get props => [
        dashboardTwoModelObj,
      ];
  DashboardTwoState copyWith({DashboardTwoModel? dashboardTwoModelObj}) {
    return DashboardTwoState(
      dashboardTwoModelObj: dashboardTwoModelObj ?? this.dashboardTwoModelObj,
    );
  }
}
