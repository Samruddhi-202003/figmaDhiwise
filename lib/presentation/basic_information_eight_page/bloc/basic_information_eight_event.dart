// ignore_for_file: must_be_immutable

part of 'basic_information_eight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BasicInformationEight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BasicInformationEightEvent extends Equatable {}

/// Event that is dispatched when the BasicInformationEight widget is first created.
class BasicInformationEightInitialEvent extends BasicInformationEightEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends BasicInformationEightEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends BasicInformationEightEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
