// ignore_for_file: must_be_immutable

part of 'with_surrender_container_bloc.dart';

/// Represents the state of WithSurrenderContainer in the application.
class WithSurrenderContainerState extends Equatable {
  WithSurrenderContainerState({this.withSurrenderContainerModelObj});

  WithSurrenderContainerModel? withSurrenderContainerModelObj;

  @override
  List<Object?> get props => [
        withSurrenderContainerModelObj,
      ];
  WithSurrenderContainerState copyWith(
      {WithSurrenderContainerModel? withSurrenderContainerModelObj}) {
    return WithSurrenderContainerState(
      withSurrenderContainerModelObj:
          withSurrenderContainerModelObj ?? this.withSurrenderContainerModelObj,
    );
  }
}
