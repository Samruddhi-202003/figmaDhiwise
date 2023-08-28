// ignore_for_file: must_be_immutable

part of 'basic_information_main_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BasicInformationMain widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BasicInformationMainEvent extends Equatable {}

/// Event that is dispatched when the BasicInformationMain widget is first created.
class BasicInformationMainInitialEvent extends BasicInformationMainEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends BasicInformationMainEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends BasicInformationMainEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
