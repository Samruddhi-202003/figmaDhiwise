// ignore_for_file: must_be_immutable

part of 'insurance_details_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InsuranceDetailsSix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InsuranceDetailsSixEvent extends Equatable {}

/// Event that is dispatched when the InsuranceDetailsSix widget is first created.
class InsuranceDetailsSixInitialEvent extends InsuranceDetailsSixEvent {
  @override
  List<Object?> get props => [];
}
