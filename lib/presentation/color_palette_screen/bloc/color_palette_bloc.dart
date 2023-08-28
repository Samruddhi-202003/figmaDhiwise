import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/color_palette_item_model.dart';
import 'package:samruddhi_s_application1/presentation/color_palette_screen/models/color_palette_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'color_palette_event.dart';
part 'color_palette_state.dart';

/// A bloc that manages the state of a ColorPalette according to the event that is dispatched to it.
class ColorPaletteBloc extends Bloc<ColorPaletteEvent, ColorPaletteState>
    with CodeAutoFill {
  ColorPaletteBloc(ColorPaletteState initialState) : super(initialState) {
    on<ColorPaletteInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<ColorPaletteState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  List<ColorPaletteItemModel> fillColorPaletteItemList() {
    return List.generate(3, (index) => ColorPaletteItemModel());
  }

  _onInitialize(
    ColorPaletteInitialEvent event,
    Emitter<ColorPaletteState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
    emit(state.copyWith(
        colorPaletteModelObj: state.colorPaletteModelObj?.copyWith(
      colorPaletteItemList: fillColorPaletteItemList(),
    )));
  }
}
