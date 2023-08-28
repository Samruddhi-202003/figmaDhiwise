// ignore_for_file: must_be_immutable

part of 'emergancy_fund_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EmergancyFund widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EmergancyFundEvent extends Equatable {}

/// Event that is dispatched when the EmergancyFund widget is first created.
class EmergancyFundInitialEvent extends EmergancyFundEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends EmergancyFundEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
