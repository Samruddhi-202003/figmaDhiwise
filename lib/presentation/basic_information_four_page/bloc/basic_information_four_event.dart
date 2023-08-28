// ignore_for_file: must_be_immutable

part of 'basic_information_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BasicInformationFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BasicInformationFourEvent extends Equatable {}

/// Event that is dispatched when the BasicInformationFour widget is first created.
class BasicInformationFourInitialEvent extends BasicInformationFourEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends BasicInformationFourEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends BasicInformationFourEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
