// ignore_for_file: must_be_immutable

part of 'terms_condition_bloc.dart';

/// Represents the state of TermsCondition in the application.
class TermsConditionState extends Equatable {
  TermsConditionState({this.termsConditionModelObj});

  TermsConditionModel? termsConditionModelObj;

  @override
  List<Object?> get props => [
        termsConditionModelObj,
      ];
  TermsConditionState copyWith({TermsConditionModel? termsConditionModelObj}) {
    return TermsConditionState(
      termsConditionModelObj:
          termsConditionModelObj ?? this.termsConditionModelObj,
    );
  }
}
