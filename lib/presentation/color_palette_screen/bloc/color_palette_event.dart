// ignore_for_file: must_be_immutable

part of 'color_palette_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ColorPalette widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ColorPaletteEvent extends Equatable {}

/// Event that is dispatched when the ColorPalette widget is first created.
class ColorPaletteInitialEvent extends ColorPaletteEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends ColorPaletteEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
