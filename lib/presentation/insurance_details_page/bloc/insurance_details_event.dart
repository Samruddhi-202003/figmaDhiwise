// ignore_for_file: must_be_immutable

part of 'insurance_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InsuranceDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InsuranceDetailsEvent extends Equatable {}

/// Event that is dispatched when the InsuranceDetails widget is first created.
class InsuranceDetailsInitialEvent extends InsuranceDetailsEvent {
  @override
  List<Object?> get props => [];
}
