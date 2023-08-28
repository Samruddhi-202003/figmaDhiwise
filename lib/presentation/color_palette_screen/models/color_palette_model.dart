// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'color_palette_item_model.dart';/// This class defines the variables used in the [color_palette_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ColorPaletteModel extends Equatable {ColorPaletteModel({this.colorPaletteItemList = const []});

List<ColorPaletteItemModel> colorPaletteItemList;

ColorPaletteModel copyWith({List<ColorPaletteItemModel>? colorPaletteItemList}) { return ColorPaletteModel(
colorPaletteItemList : colorPaletteItemList ?? this.colorPaletteItemList,
); } 
@override List<Object?> get props => [colorPaletteItemList];
 }
