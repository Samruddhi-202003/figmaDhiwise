import 'bloc/android_large_fourteen_bloc.dart';
import 'models/android_large_fourteen_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:samruddhi_s_application1/widgets/custom_elevated_button.dart';
import 'package:samruddhi_s_application1/widgets/custom_icon_button.dart';
import 'package:samruddhi_s_application1/widgets/custom_switch.dart';

class AndroidLargeFourteenScreen extends StatelessWidget {
  const AndroidLargeFourteenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeFourteenBloc>(
      create: (context) => AndroidLargeFourteenBloc(AndroidLargeFourteenState(
        androidLargeFourteenModelObj: AndroidLargeFourteenModel(),
      ))
        ..add(AndroidLargeFourteenInitialEvent()),
      child: AndroidLargeFourteenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AndroidLargeFourteenBloc, AndroidLargeFourteenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
            appBar: CustomAppBar(
              leadingWidth: getHorizontalSize(35),
              leading: AppbarImage(
                imagePath: ImageConstant.imgLeftarrow1,
                margin: getMargin(
                  left: 15,
                  top: 10,
                  bottom: 10,
                ),
              ),
              centerTitle: true,
              title: AppbarTitle(
                text: "lbl_goal_cards".tr,
              ),
              actions: [
                Container(
                  height: getVerticalSize(14.009998),
                  width: getHorizontalSize(36),
                  margin: getMargin(
                    left: 15,
                    top: 12,
                    right: 15,
                    bottom: 13,
                  ),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      BlocSelector<AndroidLargeFourteenBloc,
                          AndroidLargeFourteenState, bool?>(
                        selector: (state) => state.isSelectedSwitch,
                        builder: (context, isSelectedSwitch) {
                          return CustomSwitch(
                            alignment: Alignment.center,
                            value: isSelectedSwitch,
                            onChange: (value) {
                              context
                                  .read<AndroidLargeFourteenBloc>()
                                  .add(ChangeSwitchEvent(value: value));
                            },
                          );
                        },
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: getPadding(
                            left: 15,
                            right: 5,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl".tr.toUpperCase(),
                            style: CustomTextStyles.labelSmallOrange500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
              styleType: Style.bgFill,
            ),
            body: SizedBox(
              width: mediaQueryData.size.width,
              child: SingleChildScrollView(
                padding: getPadding(
                  top: 10,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: IntrinsicWidth(
                    child: SizedBox(
                      width: double.maxFinite,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: getVerticalSize(720),
                            width: double.maxFinite,
                          ),
                          SizedBox(
                            height: getVerticalSize(720),
                            width: double.maxFinite,
                          ),
                          SizedBox(
                            height: getVerticalSize(720),
                            width: double.maxFinite,
                          ),
                          SizedBox(
                            height: getVerticalSize(720),
                            width: double.maxFinite,
                          ),
                          Expanded(
                            child: Padding(
                              padding: getPadding(
                                left: 9,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: getMargin(
                                      left: 6,
                                      right: 6,
                                    ),
                                    decoration:
                                        AppDecoration.outlinePink.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          padding: getPadding(
                                            left: 10,
                                            top: 2,
                                            right: 10,
                                            bottom: 2,
                                          ),
                                          decoration: AppDecoration.fillPink,
                                          child: Text(
                                            "lbl_our_dream_house".tr,
                                            style: CustomTextStyles
                                                .titleSmallOnPrimary_1,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 9,
                                            top: 1,
                                            right: 9,
                                            bottom: 3,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: getHorizontalSize(218),
                                                child: Text(
                                                  "msg".tr,
                                                  maxLines: 7,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: CustomTextStyles
                                                      .labelSmallSemiBold
                                                      .copyWith(
                                                    height: 1.44,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: getSize(80),
                                                width: getSize(80),
                                                padding: getPadding(
                                                  left: 5,
                                                  top: 1,
                                                  right: 5,
                                                  bottom: 1,
                                                ),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder5,
                                                ),
                                                child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgAsd22,
                                                  height: getSize(70),
                                                  width: getSize(70),
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 6,
                                      top: 10,
                                      right: 6,
                                    ),
                                    padding: getPadding(
                                      left: 14,
                                      top: 2,
                                      right: 14,
                                      bottom: 2,
                                    ),
                                    decoration: AppDecoration.gradientPinkToPink
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            bottom: 2,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "lbl2".tr,
                                                style:
                                                    theme.textTheme.titleSmall,
                                              ),
                                              RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          "lbl_down_payment".tr,
                                                      style: CustomTextStyles
                                                          .bodySmallOrange500,
                                                    ),
                                                    TextSpan(
                                                      text: "lbl_rs".tr,
                                                      style: theme
                                                          .textTheme.bodySmall,
                                                    ),
                                                    TextSpan(
                                                      text: "lbl_4_82".tr,
                                                      style: CustomTextStyles
                                                          .titleSmallOnPrimary_2,
                                                    ),
                                                    TextSpan(
                                                      text: "lbl_l".tr,
                                                      style: theme
                                                          .textTheme.bodySmall,
                                                    ),
                                                  ],
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 74,
                                            top: 4,
                                            bottom: 5,
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "lbl_rs".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallOnPrimaryMedium,
                                                ),
                                                TextSpan(
                                                  text: "lbl_24_14l".tr,
                                                  style: theme
                                                      .textTheme.displaySmall,
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 6,
                                      top: 5,
                                      right: 6,
                                    ),
                                    padding: getPadding(
                                      left: 15,
                                      top: 7,
                                      right: 15,
                                      bottom: 7,
                                    ),
                                    decoration: AppDecoration
                                        .gradientOrangeToPink
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            top: 5,
                                            bottom: 5,
                                          ),
                                          child: Text(
                                            "msg_already_achieved2".tr,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "lbl_rs".tr,
                                                style: CustomTextStyles
                                                    .titleSmallOnPrimaryMedium,
                                              ),
                                              TextSpan(
                                                text: "lbl_0".tr,
                                                style: theme
                                                    .textTheme.displaySmall,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(49),
                                    width: getHorizontalSize(330),
                                    margin: getMargin(
                                      top: 5,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.centerRight,
                                      children: [
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                            padding: getPadding(
                                              left: 15,
                                              top: 11,
                                              right: 15,
                                              bottom: 11,
                                            ),
                                            decoration: AppDecoration
                                                .gradientPinkToPink
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder5,
                                            ),
                                            child: Text(
                                              "lbl_target_date".tr,
                                              style: theme.textTheme.titleSmall,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: getPadding(
                                              right: 15,
                                            ),
                                            child: Text(
                                              "lbl_12_jan_2035".tr,
                                              style:
                                                  theme.textTheme.headlineLarge,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 6,
                                      top: 3,
                                      right: 6,
                                    ),
                                    padding: getPadding(
                                      left: 15,
                                      top: 4,
                                      right: 15,
                                      bottom: 4,
                                    ),
                                    decoration: AppDecoration
                                        .gradientOrangeToPink
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            top: 8,
                                            bottom: 7,
                                          ),
                                          child: Text(
                                            "lbl_changes".tr,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 2,
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "lbl_delayed_by".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallOnPrimaryMedium,
                                                ),
                                                TextSpan(
                                                  text: "lbl_5_years".tr,
                                                  style: theme
                                                      .textTheme.displaySmall,
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 6,
                                      top: 5,
                                      right: 6,
                                    ),
                                    padding: getPadding(
                                      left: 15,
                                      top: 7,
                                      right: 15,
                                      bottom: 7,
                                    ),
                                    decoration: AppDecoration.gradientPinkToPink
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            top: 5,
                                            bottom: 5,
                                          ),
                                          child: Text(
                                            "msg_monthly_investment".tr,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 87,
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "lbl_rs".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallOnPrimaryMedium,
                                                ),
                                                TextSpan(
                                                  text: "lbl_1700".tr,
                                                  style: theme
                                                      .textTheme.displaySmall,
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 6,
                                      top: 10,
                                      right: 6,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: getVerticalSize(34),
                                              width: getHorizontalSize(145),
                                              child: Stack(
                                                alignment: Alignment.centerLeft,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Container(
                                                      padding: getPadding(
                                                        left: 15,
                                                        top: 2,
                                                        right: 15,
                                                        bottom: 2,
                                                      ),
                                                      decoration: AppDecoration
                                                          .fillPink
                                                          .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder5,
                                                      ),
                                                      child: Text(
                                                        "lbl_time_completed".tr,
                                                        style: theme.textTheme
                                                            .labelLarge,
                                                      ),
                                                    ),
                                                  ),
                                                  CustomIconButton(
                                                    height: getSize(34),
                                                    width: getSize(34),
                                                    padding: getPadding(
                                                      all: 8,
                                                    ),
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgGroup113,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 20,
                                                top: 5,
                                                right: 9,
                                              ),
                                              child: DottedBorder(
                                                color: appTheme.orange500,
                                                padding: EdgeInsets.only(
                                                  left: getHorizontalSize(1),
                                                  top: getVerticalSize(1),
                                                  right: getHorizontalSize(1),
                                                  bottom: getVerticalSize(1),
                                                ),
                                                strokeWidth:
                                                    getHorizontalSize(1),
                                                radius: Radius.circular(20),
                                                borderType: BorderType.RRect,
                                                dashPattern: [
                                                  3,
                                                  3,
                                                ],
                                                child: Container(
                                                  padding: getPadding(
                                                    left: 30,
                                                    top: 3,
                                                    right: 30,
                                                    bottom: 3,
                                                  ),
                                                  decoration: AppDecoration
                                                      .outlineOrange
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder20,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgTime11,
                                                        height:
                                                            getVerticalSize(16),
                                                        width:
                                                            getHorizontalSize(
                                                                56),
                                                        alignment:
                                                            Alignment.center,
                                                        margin: getMargin(
                                                          top: 3,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Text(
                                                              "lbl_year".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelSmall,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                left: 12,
                                                              ),
                                                              child: Text(
                                                                "lbl_month".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelSmall,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 40,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: getVerticalSize(34),
                                                width: getHorizontalSize(145),
                                                child: Stack(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                        padding: getPadding(
                                                          left: 14,
                                                          top: 2,
                                                          right: 14,
                                                          bottom: 2,
                                                        ),
                                                        decoration:
                                                            AppDecoration
                                                                .fillPink
                                                                .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder5,
                                                        ),
                                                        child: Text(
                                                          "lbl_time_remaining"
                                                              .tr,
                                                          style: theme.textTheme
                                                              .labelLarge,
                                                        ),
                                                      ),
                                                    ),
                                                    CustomIconButton(
                                                      height: getSize(34),
                                                      width: getSize(34),
                                                      padding: getPadding(
                                                        all: 8,
                                                      ),
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgGroup111,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 9,
                                                  top: 5,
                                                  right: 20,
                                                ),
                                                child: DottedBorder(
                                                  color: appTheme.orange500,
                                                  padding: EdgeInsets.only(
                                                    left: getHorizontalSize(1),
                                                    top: getVerticalSize(1),
                                                    right: getHorizontalSize(1),
                                                    bottom: getVerticalSize(1),
                                                  ),
                                                  strokeWidth:
                                                      getHorizontalSize(1),
                                                  radius: Radius.circular(20),
                                                  borderType: BorderType.RRect,
                                                  dashPattern: [
                                                    3,
                                                    3,
                                                  ],
                                                  child: Container(
                                                    padding: getPadding(
                                                      left: 29,
                                                      top: 3,
                                                      right: 29,
                                                      bottom: 3,
                                                    ),
                                                    decoration: AppDecoration
                                                        .outlineOrange
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder20,
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgTime15,
                                                          height:
                                                              getVerticalSize(
                                                                  16),
                                                          width:
                                                              getHorizontalSize(
                                                                  56),
                                                          margin: getMargin(
                                                            top: 3,
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Text(
                                                                "lbl_year".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelSmall,
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    getPadding(
                                                                  left: 12,
                                                                ),
                                                                child: Text(
                                                                  "lbl_month"
                                                                      .tr,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelSmall,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(355),
                                    width: getHorizontalSize(342),
                                    margin: getMargin(
                                      top: 11,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        CustomImageView(
                                          svgPath:
                                              ImageConstant.imgGroupPrimary,
                                          height: getSize(342),
                                          width: getSize(342),
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: SizedBox(
                                            height: getVerticalSize(314),
                                            width: getHorizontalSize(204),
                                            child: Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgMe21,
                                                  height: getVerticalSize(314),
                                                  width: getHorizontalSize(204),
                                                  alignment: Alignment.center,
                                                ),
                                                CustomElevatedButton(
                                                  width: getHorizontalSize(180),
                                                  text: "msg_my_financial_plan"
                                                      .tr,
                                                  margin: getMargin(
                                                    bottom: 104,
                                                  ),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .outlineBlack,
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: getVerticalSize(720),
                            width: double.maxFinite,
                            margin: getMargin(
                              left: 9,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: getMargin(
                                    left: 6,
                                    right: 6,
                                  ),
                                  decoration:
                                      AppDecoration.outlinePink.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: getPadding(
                                          left: 10,
                                          top: 8,
                                          right: 10,
                                          bottom: 8,
                                        ),
                                        decoration: AppDecoration.fillPink,
                                        child: Text(
                                          "msg_retirement_with".tr,
                                          style: CustomTextStyles
                                              .titleSmallOnPrimary_1,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 10,
                                          top: 6,
                                          right: 10,
                                          bottom: 10,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              width: getHorizontalSize(220),
                                              child: Text(
                                                "msg2".tr,
                                                maxLines: null,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .labelMediumBluegray80001
                                                    .copyWith(
                                                  height: 1.40,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: getSize(80),
                                              width: getSize(80),
                                              padding: getPadding(
                                                left: 5,
                                                top: 1,
                                                right: 5,
                                                bottom: 1,
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5,
                                              ),
                                              child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgAsd23,
                                                height: getSize(70),
                                                width: getSize(70),
                                                alignment:
                                                    Alignment.bottomCenter,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    left: 6,
                                    top: 10,
                                    right: 6,
                                  ),
                                  padding: getPadding(
                                    left: 15,
                                    top: 6,
                                    right: 15,
                                    bottom: 6,
                                  ),
                                  decoration:
                                      AppDecoration.gradientPinkToPink.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 7,
                                          bottom: 7,
                                        ),
                                        child: Text(
                                          "lbl_target_value".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "lbl_rs".tr,
                                              style: CustomTextStyles
                                                  .titleSmallOnPrimaryMedium,
                                            ),
                                            TextSpan(
                                              text: "lbl_1_72cr".tr,
                                              style:
                                                  theme.textTheme.displaySmall,
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    left: 6,
                                    top: 5,
                                    right: 6,
                                  ),
                                  padding: getPadding(
                                    left: 15,
                                    top: 6,
                                    right: 15,
                                    bottom: 6,
                                  ),
                                  decoration: AppDecoration.gradientOrangeToPink
                                      .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 7,
                                          bottom: 7,
                                        ),
                                        child: Text(
                                          "msg_already_achieved2".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "lbl_rs".tr,
                                              style: CustomTextStyles
                                                  .titleSmallOnPrimaryMedium,
                                            ),
                                            TextSpan(
                                              text: "lbl_0".tr,
                                              style:
                                                  theme.textTheme.displaySmall,
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    left: 6,
                                    top: 5,
                                    right: 6,
                                  ),
                                  padding: getPadding(
                                    left: 15,
                                    top: 6,
                                    right: 15,
                                    bottom: 6,
                                  ),
                                  decoration:
                                      AppDecoration.gradientPinkToPink.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 7,
                                          bottom: 7,
                                        ),
                                        child: Text(
                                          "lbl_target_date".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 82,
                                        ),
                                        child: Text(
                                          "lbl_12_jan_2053".tr,
                                          textAlign: TextAlign.right,
                                          style: theme.textTheme.headlineLarge,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    left: 6,
                                    top: 5,
                                    right: 6,
                                  ),
                                  padding: getPadding(
                                    left: 15,
                                    top: 6,
                                    right: 15,
                                    bottom: 6,
                                  ),
                                  decoration: AppDecoration.gradientOrangeToPink
                                      .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 7,
                                          bottom: 7,
                                        ),
                                        child: Text(
                                          "lbl_changes".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "lbl_delayed_by".tr,
                                              style: CustomTextStyles
                                                  .titleSmallOnPrimaryMedium,
                                            ),
                                            TextSpan(
                                              text: "lbl_5_years".tr,
                                              style:
                                                  theme.textTheme.displaySmall,
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    left: 6,
                                    top: 5,
                                    right: 6,
                                  ),
                                  padding: getPadding(
                                    left: 15,
                                    top: 2,
                                    right: 15,
                                    bottom: 2,
                                  ),
                                  decoration:
                                      AppDecoration.gradientPinkToPink.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 11,
                                          bottom: 11,
                                        ),
                                        child: Text(
                                          "msg_monthly_investment".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 88,
                                          top: 8,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "lbl_rs".tr,
                                                style: CustomTextStyles
                                                    .titleSmallOnPrimaryMedium,
                                              ),
                                              TextSpan(
                                                text: "lbl_1203".tr,
                                                style: theme
                                                    .textTheme.displaySmall,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 6,
                                    top: 10,
                                    right: 6,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: getVerticalSize(34),
                                            width: getHorizontalSize(145),
                                            child: Stack(
                                              alignment: Alignment.centerLeft,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Container(
                                                    padding: getPadding(
                                                      left: 15,
                                                      top: 6,
                                                      right: 15,
                                                      bottom: 6,
                                                    ),
                                                    decoration: AppDecoration
                                                        .fillPink
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder5,
                                                    ),
                                                    child: Text(
                                                      "lbl_time_completed".tr,
                                                      style: theme
                                                          .textTheme.labelLarge,
                                                    ),
                                                  ),
                                                ),
                                                CustomIconButton(
                                                  height: getSize(34),
                                                  width: getSize(34),
                                                  padding: getPadding(
                                                    all: 8,
                                                  ),
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgGroup113,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 20,
                                              top: 5,
                                              right: 9,
                                            ),
                                            child: DottedBorder(
                                              color: appTheme.orange500,
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(1),
                                                top: getVerticalSize(1),
                                                right: getHorizontalSize(1),
                                                bottom: getVerticalSize(1),
                                              ),
                                              strokeWidth: getHorizontalSize(1),
                                              radius: Radius.circular(20),
                                              borderType: BorderType.RRect,
                                              dashPattern: [
                                                3,
                                                3,
                                              ],
                                              child: Container(
                                                padding: getPadding(
                                                  left: 30,
                                                  top: 5,
                                                  right: 30,
                                                  bottom: 5,
                                                ),
                                                decoration: AppDecoration
                                                    .outlineOrange
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder20,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgTime11,
                                                      height:
                                                          getVerticalSize(16),
                                                      width:
                                                          getHorizontalSize(56),
                                                      alignment:
                                                          Alignment.center,
                                                      margin: getMargin(
                                                        top: 2,
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding: getPadding(
                                                          top: 3,
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Text(
                                                              "lbl_year".tr,
                                                              textAlign:
                                                                  TextAlign
                                                                      .right,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelSmall,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                left: 12,
                                                              ),
                                                              child: Text(
                                                                "lbl_month".tr,
                                                                textAlign:
                                                                    TextAlign
                                                                        .right,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelSmall,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 40,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: getVerticalSize(34),
                                              width: getHorizontalSize(145),
                                              child: Stack(
                                                alignment:
                                                    Alignment.centerRight,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Container(
                                                      padding: getPadding(
                                                        left: 14,
                                                        top: 6,
                                                        right: 14,
                                                        bottom: 6,
                                                      ),
                                                      decoration: AppDecoration
                                                          .fillPink
                                                          .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder5,
                                                      ),
                                                      child: Text(
                                                        "lbl_time_remaining".tr,
                                                        textAlign:
                                                            TextAlign.right,
                                                        style: theme.textTheme
                                                            .labelLarge,
                                                      ),
                                                    ),
                                                  ),
                                                  CustomIconButton(
                                                    height: getSize(34),
                                                    width: getSize(34),
                                                    padding: getPadding(
                                                      all: 8,
                                                    ),
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgGroup111,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 9,
                                                top: 5,
                                                right: 20,
                                              ),
                                              child: DottedBorder(
                                                color: appTheme.orange500,
                                                padding: EdgeInsets.only(
                                                  left: getHorizontalSize(1),
                                                  top: getVerticalSize(1),
                                                  right: getHorizontalSize(1),
                                                  bottom: getVerticalSize(1),
                                                ),
                                                strokeWidth:
                                                    getHorizontalSize(1),
                                                radius: Radius.circular(20),
                                                borderType: BorderType.RRect,
                                                dashPattern: [
                                                  3,
                                                  3,
                                                ],
                                                child: Container(
                                                  padding: getPadding(
                                                    left: 30,
                                                    top: 5,
                                                    right: 30,
                                                    bottom: 5,
                                                  ),
                                                  decoration: AppDecoration
                                                      .outlineOrange
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder20,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgTime16,
                                                        height:
                                                            getVerticalSize(16),
                                                        width:
                                                            getHorizontalSize(
                                                                56),
                                                        alignment:
                                                            Alignment.center,
                                                        margin: getMargin(
                                                          top: 2,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Padding(
                                                          padding: getPadding(
                                                            top: 3,
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Text(
                                                                "lbl_year".tr,
                                                                textAlign:
                                                                    TextAlign
                                                                        .right,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelSmall,
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    getPadding(
                                                                  left: 12,
                                                                ),
                                                                child: Text(
                                                                  "lbl_month"
                                                                      .tr,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .right,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelSmall,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(355),
                                  width: getHorizontalSize(342),
                                  margin: getMargin(
                                    top: 11,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgGroupPrimary,
                                        height: getSize(342),
                                        width: getSize(342),
                                        alignment: Alignment.center,
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgFamily21,
                                        height: getVerticalSize(220),
                                        width: getHorizontalSize(302),
                                        alignment: Alignment.topCenter,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          SizedBox(
                            height: getVerticalSize(720),
                            width: double.maxFinite,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
