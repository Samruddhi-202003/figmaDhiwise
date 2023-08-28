// ignore_for_file: must_be_immutable

part of 'android_large_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeFiveEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeFive widget is first created.
class AndroidLargeFiveInitialEvent extends AndroidLargeFiveEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends AndroidLargeFiveEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton1Event extends AndroidLargeFiveEvent {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton2Event extends AndroidLargeFiveEvent {
  ChangeRadioButton2Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
