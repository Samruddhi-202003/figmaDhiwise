// ignore_for_file: must_be_immutable

part of 'basic_information_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BasicInformationFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BasicInformationFiveEvent extends Equatable {}

/// Event that is dispatched when the BasicInformationFive widget is first created.
class BasicInformationFiveInitialEvent extends BasicInformationFiveEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends BasicInformationFiveEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends BasicInformationFiveEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
