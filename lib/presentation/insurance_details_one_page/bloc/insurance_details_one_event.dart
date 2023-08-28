// ignore_for_file: must_be_immutable

part of 'insurance_details_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InsuranceDetailsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InsuranceDetailsOneEvent extends Equatable {}

/// Event that is dispatched when the InsuranceDetailsOne widget is first created.
class InsuranceDetailsOneInitialEvent extends InsuranceDetailsOneEvent {
  @override
  List<Object?> get props => [];
}
