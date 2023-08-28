// ignore_for_file: must_be_immutable

part of 'basic_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BasicDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BasicDetailsEvent extends Equatable {}

/// Event that is dispatched when the BasicDetails widget is first created.
class BasicDetailsInitialEvent extends BasicDetailsEvent {
  @override
  List<Object?> get props => [];
}
