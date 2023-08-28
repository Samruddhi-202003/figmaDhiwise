// ignore_for_file: must_be_immutable

part of 'without_surrender_bloc.dart';

/// Represents the state of WithoutSurrender in the application.
class WithoutSurrenderState extends Equatable {
  WithoutSurrenderState({
    this.group1089Controller,
    this.savingratioController,
    this.withoutSurrenderModelObj,
  });

  TextEditingController? group1089Controller;

  TextEditingController? savingratioController;

  WithoutSurrenderModel? withoutSurrenderModelObj;

  @override
  List<Object?> get props => [
        group1089Controller,
        savingratioController,
        withoutSurrenderModelObj,
      ];
  WithoutSurrenderState copyWith({
    TextEditingController? group1089Controller,
    TextEditingController? savingratioController,
    WithoutSurrenderModel? withoutSurrenderModelObj,
  }) {
    return WithoutSurrenderState(
      group1089Controller: group1089Controller ?? this.group1089Controller,
      savingratioController:
          savingratioController ?? this.savingratioController,
      withoutSurrenderModelObj:
          withoutSurrenderModelObj ?? this.withoutSurrenderModelObj,
    );
  }
}
