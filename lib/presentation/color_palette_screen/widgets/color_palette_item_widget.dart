import '../models/color_palette_item_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ColorPaletteItemWidget extends StatelessWidget {
  ColorPaletteItemWidget(
    this.colorPaletteItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ColorPaletteItemModel colorPaletteItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getSize(50),
      width: getSize(50),
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
      ),
    );
  }
}
