// ignore_for_file: must_be_immutable

part of 'hamburger_menu_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HamburgerMenuOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HamburgerMenuOneEvent extends Equatable {}

/// Event that is dispatched when the HamburgerMenuOne widget is first created.
class HamburgerMenuOneInitialEvent extends HamburgerMenuOneEvent {
  @override
  List<Object?> get props => [];
}
