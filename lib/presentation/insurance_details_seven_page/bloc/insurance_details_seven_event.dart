// ignore_for_file: must_be_immutable

part of 'insurance_details_seven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InsuranceDetailsSeven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InsuranceDetailsSevenEvent extends Equatable {}

/// Event that is dispatched when the InsuranceDetailsSeven widget is first created.
class InsuranceDetailsSevenInitialEvent extends InsuranceDetailsSevenEvent {
  @override
  List<Object?> get props => [];
}
