// ignore_for_file: must_be_immutable

part of 'no_married_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NoMarriedOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NoMarriedOneEvent extends Equatable {}

/// Event that is dispatched when the NoMarriedOne widget is first created.
class NoMarriedOneInitialEvent extends NoMarriedOneEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends NoMarriedOneEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
