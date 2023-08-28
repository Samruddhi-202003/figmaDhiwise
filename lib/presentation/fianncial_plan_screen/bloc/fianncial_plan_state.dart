// ignore_for_file: must_be_immutable

part of 'fianncial_plan_bloc.dart';

/// Represents the state of FianncialPlan in the application.
class FianncialPlanState extends Equatable {
  FianncialPlanState({this.fianncialPlanModelObj});

  FianncialPlanModel? fianncialPlanModelObj;

  @override
  List<Object?> get props => [
        fianncialPlanModelObj,
      ];
  FianncialPlanState copyWith({FianncialPlanModel? fianncialPlanModelObj}) {
    return FianncialPlanState(
      fianncialPlanModelObj:
          fianncialPlanModelObj ?? this.fianncialPlanModelObj,
    );
  }
}
