// ignore_for_file: must_be_immutable

part of 'insurance_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Insurance widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InsuranceEvent extends Equatable {}

/// Event that is dispatched when the Insurance widget is first created.
class InsuranceInitialEvent extends InsuranceEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends InsuranceEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
