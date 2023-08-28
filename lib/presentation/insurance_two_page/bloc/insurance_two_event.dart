// ignore_for_file: must_be_immutable

part of 'insurance_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InsuranceTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InsuranceTwoEvent extends Equatable {}

/// Event that is dispatched when the InsuranceTwo widget is first created.
class InsuranceTwoInitialEvent extends InsuranceTwoEvent {
  @override
  List<Object?> get props => [];
}
