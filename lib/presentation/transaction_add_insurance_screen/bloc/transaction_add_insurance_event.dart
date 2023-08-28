// ignore_for_file: must_be_immutable

part of 'transaction_add_insurance_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TransactionAddInsurance widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TransactionAddInsuranceEvent extends Equatable {}

/// Event that is dispatched when the TransactionAddInsurance widget is first created.
class TransactionAddInsuranceInitialEvent extends TransactionAddInsuranceEvent {
  @override
  List<Object?> get props => [];
}
