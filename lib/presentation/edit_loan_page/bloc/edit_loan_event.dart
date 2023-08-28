// ignore_for_file: must_be_immutable

part of 'edit_loan_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EditLoan widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EditLoanEvent extends Equatable {}

/// Event that is dispatched when the EditLoan widget is first created.
class EditLoanInitialEvent extends EditLoanEvent {
  @override
  List<Object?> get props => [];
}
