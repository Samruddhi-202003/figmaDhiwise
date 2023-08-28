import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/font_palette_screen/models/font_palette_model.dart';
part 'font_palette_event.dart';
part 'font_palette_state.dart';

/// A bloc that manages the state of a FontPalette according to the event that is dispatched to it.
class FontPaletteBloc extends Bloc<FontPaletteEvent, FontPaletteState> {
  FontPaletteBloc(FontPaletteState initialState) : super(initialState) {
    on<FontPaletteInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FontPaletteInitialEvent event,
    Emitter<FontPaletteState> emit,
  ) async {}
}
