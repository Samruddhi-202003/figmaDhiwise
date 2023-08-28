// ignore_for_file: must_be_immutable

part of 'edit_insurance_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EditInsuranceDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EditInsuranceDetailsEvent extends Equatable {}

/// Event that is dispatched when the EditInsuranceDetails widget is first created.
class EditInsuranceDetailsInitialEvent extends EditInsuranceDetailsEvent {
  @override
  List<Object?> get props => [];
}
