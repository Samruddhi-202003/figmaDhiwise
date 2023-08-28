// ignore_for_file: must_be_immutable

part of 'basic_details_bloc.dart';

/// Represents the state of BasicDetails in the application.
class BasicDetailsState extends Equatable {
  BasicDetailsState({this.basicDetailsModelObj});

  BasicDetailsModel? basicDetailsModelObj;

  @override
  List<Object?> get props => [
        basicDetailsModelObj,
      ];
  BasicDetailsState copyWith({BasicDetailsModel? basicDetailsModelObj}) {
    return BasicDetailsState(
      basicDetailsModelObj: basicDetailsModelObj ?? this.basicDetailsModelObj,
    );
  }
}
