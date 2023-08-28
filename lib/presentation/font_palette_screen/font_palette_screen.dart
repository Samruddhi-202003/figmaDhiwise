import 'bloc/font_palette_bloc.dart';
import 'models/font_palette_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/custom_elevated_button.dart';

class FontPaletteScreen extends StatelessWidget {
  const FontPaletteScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FontPaletteBloc>(
      create: (context) => FontPaletteBloc(FontPaletteState(
        fontPaletteModelObj: FontPaletteModel(),
      ))
        ..add(FontPaletteInitialEvent()),
      child: FontPaletteScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FontPaletteBloc, FontPaletteState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
            body: Container(
              width: double.maxFinite,
              padding: getPadding(
                left: 30,
                top: 47,
                right: 30,
                bottom: 47,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "lbl_font_name".tr,
                    style: CustomTextStyles.titleLargePrimaryRegular,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 2,
                    ),
                    child: Text(
                      "msg_font_family_hind".tr,
                      style: CustomTextStyles.titleLargeBlack90001Regular,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 18,
                    ),
                    child: Text(
                      "lbl_font_size".tr,
                      style: CustomTextStyles.titleLargePrimaryRegular,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 1,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomElevatedButton(
                          height: getVerticalSize(40),
                          width: getHorizontalSize(40),
                          text: "lbl_182".tr,
                          buttonStyle: CustomButtonStyles.fillGrayTL3,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumOnPrimaryMedium,
                        ),
                        Padding(
                          padding: getPadding(
                            left: 10,
                            top: 6,
                            bottom: 8,
                          ),
                          child: Text(
                            "lbl_title_font".tr,
                            style: CustomTextStyles.bodyMediumBlack90001,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 5,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomElevatedButton(
                          height: getVerticalSize(40),
                          width: getHorizontalSize(40),
                          text: "lbl_162".tr,
                          buttonStyle: CustomButtonStyles.fillGrayTL3,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumOnPrimaryMedium,
                        ),
                        Padding(
                          padding: getPadding(
                            left: 10,
                            top: 6,
                            bottom: 8,
                          ),
                          child: Text(
                            "msg_form_field_data".tr,
                            style: CustomTextStyles.bodyMediumBlack90001,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 5,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomElevatedButton(
                          height: getVerticalSize(40),
                          width: getHorizontalSize(40),
                          text: "lbl_142".tr,
                          buttonStyle: CustomButtonStyles.fillGrayTL3,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumOnPrimaryMedium,
                        ),
                        Padding(
                          padding: getPadding(
                            left: 10,
                            top: 6,
                            bottom: 8,
                          ),
                          child: Text(
                            "msg_form_button_font".tr,
                            style: CustomTextStyles.bodyMediumBlack90001,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 5,
                    ),
                    child: Row(
                      children: [
                        CustomElevatedButton(
                          height: getVerticalSize(40),
                          width: getHorizontalSize(40),
                          text: "lbl_122".tr,
                          buttonStyle: CustomButtonStyles.fillGrayTL3,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumOnPrimaryMedium,
                        ),
                        Padding(
                          padding: getPadding(
                            left: 10,
                            top: 7,
                            bottom: 7,
                          ),
                          child: Text(
                            "lbl_paragraph_font".tr,
                            style: CustomTextStyles.bodyMediumBlack90001,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 5,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomElevatedButton(
                          height: getVerticalSize(40),
                          width: getHorizontalSize(40),
                          text: "lbl_10".tr,
                          buttonStyle: CustomButtonStyles.fillGrayTL3,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumOnPrimaryMedium,
                        ),
                        Padding(
                          padding: getPadding(
                            left: 10,
                            top: 6,
                            bottom: 8,
                          ),
                          child: Text(
                            "lbl_form_level_font".tr,
                            style: CustomTextStyles.bodyMediumBlack90001,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 5,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomElevatedButton(
                          height: getVerticalSize(40),
                          width: getHorizontalSize(40),
                          text: "lbl_82".tr,
                          buttonStyle: CustomButtonStyles.fillGrayTL3,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumOnPrimaryMedium,
                        ),
                        Padding(
                          padding: getPadding(
                            left: 10,
                            top: 6,
                            bottom: 8,
                          ),
                          child: Text(
                            "lbl_other_font".tr,
                            style: CustomTextStyles.bodyMediumBlack90001,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 29,
                    ),
                    child: Text(
                      "lbl_font_style".tr,
                      style: CustomTextStyles.titleLargePrimaryRegular,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(80),
                    margin: getMargin(
                      left: 6,
                      top: 3,
                      bottom: 5,
                    ),
                    child: Text(
                      "msg_regular_medium_semi".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumBlack90001,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
