// ignore_for_file: must_be_immutable

part of 'insurance_details_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InsuranceDetailsFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InsuranceDetailsFiveEvent extends Equatable {}

/// Event that is dispatched when the InsuranceDetailsFive widget is first created.
class InsuranceDetailsFiveInitialEvent extends InsuranceDetailsFiveEvent {
  @override
  List<Object?> get props => [];
}
