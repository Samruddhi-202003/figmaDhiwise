// ignore_for_file: must_be_immutable

part of 'hamburger_menu_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HamburgerMenu widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HamburgerMenuEvent extends Equatable {}

/// Event that is dispatched when the HamburgerMenu widget is first created.
class HamburgerMenuInitialEvent extends HamburgerMenuEvent {
  @override
  List<Object?> get props => [];
}
