// ignore_for_file: must_be_immutable

part of 'color_palette_bloc.dart';

/// Represents the state of ColorPalette in the application.
class ColorPaletteState extends Equatable {
  ColorPaletteState({
    this.otpController,
    this.colorPaletteModelObj,
  });

  TextEditingController? otpController;

  ColorPaletteModel? colorPaletteModelObj;

  @override
  List<Object?> get props => [
        otpController,
        colorPaletteModelObj,
      ];
  ColorPaletteState copyWith({
    TextEditingController? otpController,
    ColorPaletteModel? colorPaletteModelObj,
  }) {
    return ColorPaletteState(
      otpController: otpController ?? this.otpController,
      colorPaletteModelObj: colorPaletteModelObj ?? this.colorPaletteModelObj,
    );
  }
}
