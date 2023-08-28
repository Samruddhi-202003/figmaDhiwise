// ignore_for_file: must_be_immutable

part of 'transaction_insurance_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TransactionInsurance widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TransactionInsuranceEvent extends Equatable {}

/// Event that is dispatched when the TransactionInsurance widget is first created.
class TransactionInsuranceInitialEvent extends TransactionInsuranceEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends TransactionInsuranceEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
