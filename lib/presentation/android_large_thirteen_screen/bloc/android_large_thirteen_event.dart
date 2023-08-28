// ignore_for_file: must_be_immutable

part of 'android_large_thirteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeThirteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeThirteenEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeThirteen widget is first created.
class AndroidLargeThirteenInitialEvent extends AndroidLargeThirteenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends AndroidLargeThirteenEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
