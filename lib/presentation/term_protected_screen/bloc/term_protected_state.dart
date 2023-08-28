// ignore_for_file: must_be_immutable

part of 'term_protected_bloc.dart';

/// Represents the state of TermProtected in the application.
class TermProtectedState extends Equatable {
  TermProtectedState({this.termProtectedModelObj});

  TermProtectedModel? termProtectedModelObj;

  @override
  List<Object?> get props => [
        termProtectedModelObj,
      ];
  TermProtectedState copyWith({TermProtectedModel? termProtectedModelObj}) {
    return TermProtectedState(
      termProtectedModelObj:
          termProtectedModelObj ?? this.termProtectedModelObj,
    );
  }
}
