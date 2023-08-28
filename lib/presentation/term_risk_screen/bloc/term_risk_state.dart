// ignore_for_file: must_be_immutable

part of 'term_risk_bloc.dart';

/// Represents the state of TermRisk in the application.
class TermRiskState extends Equatable {
  TermRiskState({this.termRiskModelObj});

  TermRiskModel? termRiskModelObj;

  @override
  List<Object?> get props => [
        termRiskModelObj,
      ];
  TermRiskState copyWith({TermRiskModel? termRiskModelObj}) {
    return TermRiskState(
      termRiskModelObj: termRiskModelObj ?? this.termRiskModelObj,
    );
  }
}
