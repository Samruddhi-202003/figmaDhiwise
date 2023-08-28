// ignore_for_file: must_be_immutable

part of 'insurance_details_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InsuranceDetailsTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InsuranceDetailsTwoEvent extends Equatable {}

/// Event that is dispatched when the InsuranceDetailsTwo widget is first created.
class InsuranceDetailsTwoInitialEvent extends InsuranceDetailsTwoEvent {
  @override
  List<Object?> get props => [];
}
