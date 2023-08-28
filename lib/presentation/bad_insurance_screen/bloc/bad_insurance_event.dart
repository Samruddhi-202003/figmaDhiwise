// ignore_for_file: must_be_immutable

part of 'bad_insurance_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BadInsurance widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BadInsuranceEvent extends Equatable {}

/// Event that is dispatched when the BadInsurance widget is first created.
class BadInsuranceInitialEvent extends BadInsuranceEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends BadInsuranceEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
