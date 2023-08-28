// ignore_for_file: must_be_immutable

part of 'insurance_details_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InsuranceDetailsThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InsuranceDetailsThreeEvent extends Equatable {}

/// Event that is dispatched when the InsuranceDetailsThree widget is first created.
class InsuranceDetailsThreeInitialEvent extends InsuranceDetailsThreeEvent {
  @override
  List<Object?> get props => [];
}
