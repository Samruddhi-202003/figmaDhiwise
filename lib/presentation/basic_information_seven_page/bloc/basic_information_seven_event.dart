// ignore_for_file: must_be_immutable

part of 'basic_information_seven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BasicInformationSeven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BasicInformationSevenEvent extends Equatable {}

/// Event that is dispatched when the BasicInformationSeven widget is first created.
class BasicInformationSevenInitialEvent extends BasicInformationSevenEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends BasicInformationSevenEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends BasicInformationSevenEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
