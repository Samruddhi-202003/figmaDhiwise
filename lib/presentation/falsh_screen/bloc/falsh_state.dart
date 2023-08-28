// ignore_for_file: must_be_immutable

part of 'falsh_bloc.dart';

/// Represents the state of Falsh in the application.
class FalshState extends Equatable {
  FalshState({this.falshModelObj});

  FalshModel? falshModelObj;

  @override
  List<Object?> get props => [
        falshModelObj,
      ];
  FalshState copyWith({FalshModel? falshModelObj}) {
    return FalshState(
      falshModelObj: falshModelObj ?? this.falshModelObj,
    );
  }
}
