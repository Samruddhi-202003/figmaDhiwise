// ignore_for_file: must_be_immutable

part of 'with_surrender_bloc.dart';

/// Represents the state of WithSurrender in the application.
class WithSurrenderState extends Equatable {
  WithSurrenderState({this.withSurrenderModelObj});

  WithSurrenderModel? withSurrenderModelObj;

  @override
  List<Object?> get props => [
        withSurrenderModelObj,
      ];
  WithSurrenderState copyWith({WithSurrenderModel? withSurrenderModelObj}) {
    return WithSurrenderState(
      withSurrenderModelObj:
          withSurrenderModelObj ?? this.withSurrenderModelObj,
    );
  }
}
