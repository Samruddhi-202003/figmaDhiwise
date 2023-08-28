// ignore_for_file: must_be_immutable

part of 'term_risk_one_bloc.dart';

/// Represents the state of TermRiskOne in the application.
class TermRiskOneState extends Equatable {
  TermRiskOneState({this.termRiskOneModelObj});

  TermRiskOneModel? termRiskOneModelObj;

  @override
  List<Object?> get props => [
        termRiskOneModelObj,
      ];
  TermRiskOneState copyWith({TermRiskOneModel? termRiskOneModelObj}) {
    return TermRiskOneState(
      termRiskOneModelObj: termRiskOneModelObj ?? this.termRiskOneModelObj,
    );
  }
}
