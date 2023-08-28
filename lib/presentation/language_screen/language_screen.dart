import 'bloc/language_bloc.dart';
import 'models/language_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LanguageBloc>(
      create: (context) => LanguageBloc(LanguageState(
        languageModelObj: LanguageModel(),
      ))
        ..add(LanguageInitialEvent()),
      child: LanguageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<LanguageBloc, LanguageState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: getVerticalSize(612),
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgBgplain1,
                          height: getVerticalSize(612),
                          width: getHorizontalSize(360),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: getPadding(
                              left: 40,
                              right: 40,
                              bottom: 30,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "msg3".tr,
                                  style: CustomTextStyles
                                      .headlineSmallBluegray80001,
                                ),
                                Container(
                                  margin: getMargin(
                                    top: 9,
                                  ),
                                  decoration:
                                      AppDecoration.outlineOnPrimary.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: getVerticalSize(81),
                                        width: getHorizontalSize(97),
                                        margin: getMargin(
                                          top: 59,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.bottomLeft,
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Container(
                                                height: getVerticalSize(65),
                                                width: getHorizontalSize(72),
                                                decoration: BoxDecoration(
                                                  color: theme
                                                      .colorScheme.onPrimary
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(36),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Container(
                                                height: getVerticalSize(75),
                                                width: getHorizontalSize(82),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(41),
                                                  ),
                                                  border: Border.all(
                                                    color: theme
                                                        .colorScheme.onPrimary
                                                        .withOpacity(0.2),
                                                    width: getHorizontalSize(1),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                decoration: AppDecoration
                                                    .outlineBlack90001,
                                                child: Text(
                                                  "lbl".tr,
                                                  style: CustomTextStyles
                                                      .displaySmallBold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: getVerticalSize(139),
                                        width: getHorizontalSize(137),
                                        child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                height: getVerticalSize(72),
                                                width: getHorizontalSize(71),
                                                decoration: BoxDecoration(
                                                  color: theme
                                                      .colorScheme.onPrimary
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(36),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                height: getVerticalSize(51),
                                                width: getHorizontalSize(70),
                                                margin: getMargin(
                                                  left: 31,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: theme
                                                      .colorScheme.onPrimary
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(35),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgTajmahal1,
                                              height: getVerticalSize(70),
                                              width: getHorizontalSize(128),
                                              alignment: Alignment.bottomLeft,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 59,
                                  ),
                                  child: Text(
                                    "msg4".tr,
                                    style: CustomTextStyles
                                        .headlineSmallBluegray80001,
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    top: 7,
                                  ),
                                  decoration:
                                      AppDecoration.outlineOnPrimary.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: getVerticalSize(85),
                                        width: getHorizontalSize(114),
                                        margin: getMargin(
                                          top: 55,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.centerLeft,
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Container(
                                                height: getVerticalSize(75),
                                                width: getHorizontalSize(72),
                                                decoration: BoxDecoration(
                                                  color: theme
                                                      .colorScheme.onPrimary
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(37),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                height: getVerticalSize(85),
                                                width: getHorizontalSize(82),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(42),
                                                  ),
                                                  border: Border.all(
                                                    color: theme
                                                        .colorScheme.onPrimary
                                                        .withOpacity(0.2),
                                                    width: getHorizontalSize(1),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                margin: getMargin(
                                                  top: 2,
                                                ),
                                                decoration: AppDecoration
                                                    .outlineBlack90001,
                                                child: Text(
                                                  "lbl5".tr,
                                                  style: CustomTextStyles
                                                      .displaySmallBold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: getVerticalSize(139),
                                        width: getHorizontalSize(130),
                                        child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                height: getVerticalSize(72),
                                                width: getHorizontalSize(71),
                                                decoration: BoxDecoration(
                                                  color: theme
                                                      .colorScheme.onPrimary
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(36),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                height: getVerticalSize(51),
                                                width: getHorizontalSize(70),
                                                margin: getMargin(
                                                  left: 24,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: theme
                                                      .colorScheme.onPrimary
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(35),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVictoria1,
                                              height: getVerticalSize(80),
                                              width: getHorizontalSize(123),
                                              alignment: Alignment.bottomLeft,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgBgplain2,
                    height: getVerticalSize(158),
                    width: getHorizontalSize(360),
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
