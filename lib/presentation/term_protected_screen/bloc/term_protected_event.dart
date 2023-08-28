// ignore_for_file: must_be_immutable

part of 'term_protected_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TermProtected widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TermProtectedEvent extends Equatable {}

/// Event that is dispatched when the TermProtected widget is first created.
class TermProtectedInitialEvent extends TermProtectedEvent {
  @override
  List<Object?> get props => [];
}
