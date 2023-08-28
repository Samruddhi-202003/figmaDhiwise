// ignore_for_file: must_be_immutable

part of 'basic_information_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BasicInformationThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BasicInformationThreeEvent extends Equatable {}

/// Event that is dispatched when the BasicInformationThree widget is first created.
class BasicInformationThreeInitialEvent extends BasicInformationThreeEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends BasicInformationThreeEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends BasicInformationThreeEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
