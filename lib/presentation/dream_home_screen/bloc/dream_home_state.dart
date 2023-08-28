// ignore_for_file: must_be_immutable

part of 'dream_home_bloc.dart';

/// Represents the state of DreamHome in the application.
class DreamHomeState extends Equatable {
  DreamHomeState({this.dreamHomeModelObj});

  DreamHomeModel? dreamHomeModelObj;

  @override
  List<Object?> get props => [
        dreamHomeModelObj,
      ];
  DreamHomeState copyWith({DreamHomeModel? dreamHomeModelObj}) {
    return DreamHomeState(
      dreamHomeModelObj: dreamHomeModelObj ?? this.dreamHomeModelObj,
    );
  }
}
