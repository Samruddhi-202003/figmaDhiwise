import '../color_palette_screen/widgets/color_palette_item_widget.dart';
import 'bloc/color_palette_bloc.dart';
import 'models/color_palette_item_model.dart';
import 'models/color_palette_model.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/custom_pin_code_text_field.dart';

class ColorPaletteScreen extends StatelessWidget {
  const ColorPaletteScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ColorPaletteBloc>(
      create: (context) => ColorPaletteBloc(ColorPaletteState(
        colorPaletteModelObj: ColorPaletteModel(),
      ))
        ..add(ColorPaletteInitialEvent()),
      child: ColorPaletteScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 30,
            top: 27,
            right: 30,
            bottom: 27,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_font_color".tr,
                style: CustomTextStyles.titleLargeBlack90001,
              ),
              Padding(
                padding: getPadding(
                  top: 12,
                  right: 55,
                ),
                child: Row(
                  children: [
                    Container(
                      height: getSize(50),
                      width: getSize(50),
                      decoration: BoxDecoration(
                        color: appTheme.black90001,
                      ),
                    ),
                    Container(
                      height: getSize(50),
                      width: getSize(50),
                      margin: getMargin(
                        left: 15,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.blueGray80001,
                      ),
                    ),
                    Container(
                      height: getSize(50),
                      width: getSize(50),
                      margin: getMargin(
                        left: 15,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.gray600,
                      ),
                    ),
                    Container(
                      height: getSize(50),
                      width: getSize(50),
                      margin: getMargin(
                        left: 15,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.blueGray100,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 27,
                ),
                child: Text(
                  "lbl_theme_color".tr,
                  style: CustomTextStyles.titleLargeBlack90001,
                ),
              ),
              BlocSelector<ColorPaletteBloc, ColorPaletteState,
                  TextEditingController?>(
                selector: (state) => state.otpController,
                builder: (context, otpController) {
                  return CustomPinCodeTextField(
                    context: context,
                    margin: getMargin(
                      top: 12,
                      right: 55,
                    ),
                    controller: otpController,
                    onChanged: (value) {
                      otpController?.text = value;
                    },
                  );
                },
              ),
              Padding(
                padding: getPadding(
                  top: 27,
                ),
                child: Text(
                  "lbl_field_color".tr,
                  style: CustomTextStyles.titleLargeBlack90001,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 12,
                ),
                child: Row(
                  children: [
                    Container(
                      height: getSize(50),
                      width: getSize(50),
                      decoration: BoxDecoration(
                        color: appTheme.orange500,
                      ),
                    ),
                    Container(
                      height: getSize(50),
                      width: getSize(50),
                      margin: getMargin(
                        left: 15,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.gray300,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 27,
                ),
                child: Text(
                  "lbl_button_color".tr,
                  style: CustomTextStyles.titleLargeBlack90001,
                ),
              ),
              SizedBox(
                height: getVerticalSize(62),
                child: BlocSelector<ColorPaletteBloc, ColorPaletteState,
                    ColorPaletteModel?>(
                  selector: (state) => state.colorPaletteModelObj,
                  builder: (context, colorPaletteModelObj) {
                    return ListView.separated(
                      padding: getPadding(
                        top: 12,
                      ),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (
                        context,
                        index,
                      ) {
                        return SizedBox(
                          width: getHorizontalSize(15),
                        );
                      },
                      itemCount:
                          colorPaletteModelObj?.colorPaletteItemList.length ??
                              0,
                      itemBuilder: (context, index) {
                        ColorPaletteItemModel model =
                            colorPaletteModelObj?.colorPaletteItemList[index] ??
                                ColorPaletteItemModel();
                        return ColorPaletteItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 27,
                ),
                child: Text(
                  "lbl_value_color".tr,
                  style: CustomTextStyles.titleLargeBlack90001,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 12,
                  bottom: 5,
                ),
                child: Row(
                  children: [
                    Container(
                      height: getSize(50),
                      width: getSize(50),
                      decoration: BoxDecoration(
                        color: appTheme.redA70001,
                      ),
                    ),
                    Container(
                      height: getSize(50),
                      width: getSize(50),
                      margin: getMargin(
                        left: 15,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.green700,
                      ),
                    ),
                    Container(
                      height: getSize(50),
                      width: getSize(50),
                      margin: getMargin(
                        left: 15,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.gray300,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
