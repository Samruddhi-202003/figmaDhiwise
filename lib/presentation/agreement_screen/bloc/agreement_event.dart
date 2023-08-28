// ignore_for_file: must_be_immutable

part of 'agreement_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Agreement widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AgreementEvent extends Equatable {}

/// Event that is dispatched when the Agreement widget is first created.
class AgreementInitialEvent extends AgreementEvent {
  @override
  List<Object?> get props => [];
}
