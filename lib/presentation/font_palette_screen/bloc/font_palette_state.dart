// ignore_for_file: must_be_immutable

part of 'font_palette_bloc.dart';

/// Represents the state of FontPalette in the application.
class FontPaletteState extends Equatable {
  FontPaletteState({this.fontPaletteModelObj});

  FontPaletteModel? fontPaletteModelObj;

  @override
  List<Object?> get props => [
        fontPaletteModelObj,
      ];
  FontPaletteState copyWith({FontPaletteModel? fontPaletteModelObj}) {
    return FontPaletteState(
      fontPaletteModelObj: fontPaletteModelObj ?? this.fontPaletteModelObj,
    );
  }
}
