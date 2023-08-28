// ignore_for_file: must_be_immutable

part of 'insurance_details_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InsuranceDetailsFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InsuranceDetailsFourEvent extends Equatable {}

/// Event that is dispatched when the InsuranceDetailsFour widget is first created.
class InsuranceDetailsFourInitialEvent extends InsuranceDetailsFourEvent {
  @override
  List<Object?> get props => [];
}
