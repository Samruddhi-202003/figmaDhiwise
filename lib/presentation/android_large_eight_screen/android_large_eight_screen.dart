import '../android_large_eight_screen/widgets/listcoverneeded_item_widget.dart';
import 'bloc/android_large_eight_bloc.dart';
import 'models/android_large_eight_model.dart';
import 'models/listcoverneeded_item_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:samruddhi_s_application1/widgets/custom_elevated_button.dart';
import 'package:samruddhi_s_application1/widgets/custom_icon_button.dart';
import 'package:samruddhi_s_application1/widgets/custom_switch.dart';

class AndroidLargeEightScreen extends StatelessWidget {
  const AndroidLargeEightScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeEightBloc>(
      create: (context) => AndroidLargeEightBloc(AndroidLargeEightState(
        androidLargeEightModelObj: AndroidLargeEightModel(),
      ))
        ..add(AndroidLargeEightInitialEvent()),
      child: AndroidLargeEightScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        resizeToAvoidBottomInset: false,
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
                  BlocSelector<AndroidLargeEightBloc, AndroidLargeEightState,
                      bool?>(
                    selector: (state) => state.isSelectedSwitch,
                    builder: (context, isSelectedSwitch) {
                      return CustomSwitch(
                        alignment: Alignment.center,
                        value: isSelectedSwitch,
                        onChange: (value) {
                          context
                              .read<AndroidLargeEightBloc>()
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
                  Spacer(
                    flex: 30,
                  ),
                  SizedBox(
                    height: getVerticalSize(720),
                    width: double.maxFinite,
                  ),
                  Spacer(
                    flex: 25,
                  ),
                  SizedBox(
                    height: getVerticalSize(720),
                    width: double.maxFinite,
                  ),
                  Spacer(
                    flex: 20,
                  ),
                  SizedBox(
                    height: getVerticalSize(720),
                    width: double.maxFinite,
                  ),
                  Spacer(
                    flex: 15,
                  ),
                  Spacer(
                    flex: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: IntrinsicWidth(
                      child: Padding(
                        padding: getPadding(
                          right: 2511,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: getHorizontalSize(330),
                              margin: getMargin(
                                left: 6,
                                right: 6,
                              ),
                              decoration: AppDecoration.outlinePink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      padding: getPadding(
                                        left: 10,
                                        top: 8,
                                        right: 10,
                                        bottom: 8,
                                      ),
                                      decoration: AppDecoration.fillPink,
                                      child: Text(
                                        "lbl_emergancy_fund".tr,
                                        style: CustomTextStyles
                                            .titleSmallOnPrimary_1,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      width: double.maxFinite,
                                      margin: getMargin(
                                        top: 6,
                                        bottom: 13,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              width: getHorizontalSize(220),
                                              margin: getMargin(
                                                bottom: 1,
                                              ),
                                              child: Text(
                                                "msg_as_indians_our".tr,
                                                maxLines: null,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .labelMediumBluegray80001
                                                    .copyWith(
                                                  height: 1.40,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: getVerticalSize(81),
                                            width: getHorizontalSize(80),
                                            child: Stack(
                                              alignment: Alignment.centerLeft,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgAsd2,
                                                  height: getVerticalSize(80),
                                                  width: getHorizontalSize(75),
                                                  alignment:
                                                      Alignment.centerLeft,
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Container(
                                                    height: getSize(80),
                                                    width: getSize(80),
                                                    padding: getPadding(
                                                      left: 6,
                                                      right: 6,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder5,
                                                    ),
                                                    child: CustomImageView(
                                                      imagePath:
                                                          ImageConstant.imgAsd2,
                                                      height:
                                                          getVerticalSize(70),
                                                      width:
                                                          getHorizontalSize(66),
                                                      alignment: Alignment
                                                          .bottomCenter,
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
                                top: 4,
                                right: 15,
                                bottom: 4,
                              ),
                              decoration:
                                  AppDecoration.gradientPinkToPink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 9,
                                      bottom: 9,
                                    ),
                                    child: Text(
                                      "lbl_target_value".tr,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 4,
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
                                            text: "lbl_90".tr,
                                            style: theme.textTheme.displaySmall,
                                          ),
                                          TextSpan(
                                            text: "lbl_k".tr,
                                            style: CustomTextStyles
                                                .titleSmallOnPrimaryMedium,
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
                                top: 3,
                                bottom: 3,
                              ),
                              decoration:
                                  AppDecoration.gradientOrangeToPink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 6,
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
                                            text: "lbl_40".tr,
                                            style: theme.textTheme.displaySmall,
                                          ),
                                          TextSpan(
                                            text: "lbl_k".tr,
                                            style: CustomTextStyles
                                                .titleSmallOnPrimaryMedium,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: getPadding(
                                        top: 2,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "msg_already_achieved".tr,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                          Text(
                                            "lbl_12_jan_2023".tr,
                                            style: CustomTextStyles
                                                .bodySmallOrange50012,
                                          ),
                                        ],
                                      ),
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
                                top: 3,
                                right: 15,
                                bottom: 3,
                              ),
                              decoration:
                                  AppDecoration.gradientPinkToPink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 10,
                                      bottom: 10,
                                    ),
                                    child: Text(
                                      "lbl_target_date".tr,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 82,
                                      top: 6,
                                    ),
                                    child: Text(
                                      "lbl_12_jan_2023".tr,
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
                                top: 4,
                                right: 15,
                                bottom: 4,
                              ),
                              decoration:
                                  AppDecoration.gradientOrangeToPink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 9,
                                      bottom: 9,
                                    ),
                                    child: Text(
                                      "msg_monthly_investment".tr,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 87,
                                      top: 4,
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
                                            text: "lbl_1300".tr,
                                            style: theme.textTheme.displaySmall,
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
                                top: 63,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Expanded(
                                    child: Column(
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
                                                alignment: Alignment.centerLeft,
                                                child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgGroup113,
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
                                              width: getHorizontalSize(116),
                                              padding: getPadding(
                                                top: 5,
                                                bottom: 5,
                                              ),
                                              decoration: AppDecoration
                                                  .outlineOrange
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder20,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgTime1,
                                                    height: getVerticalSize(16),
                                                    width:
                                                        getHorizontalSize(56),
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
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Text(
                                                            "lbl_year".tr,
                                                            textAlign:
                                                                TextAlign.right,
                                                            style: theme
                                                                .textTheme
                                                                .labelSmall,
                                                          ),
                                                          Padding(
                                                            padding: getPadding(
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
                                  ),
                                  Expanded(
                                    child: Padding(
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
                                              alignment: Alignment.centerRight,
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
                                              strokeWidth: getHorizontalSize(1),
                                              radius: Radius.circular(20),
                                              borderType: BorderType.RRect,
                                              dashPattern: [
                                                3,
                                                3,
                                              ],
                                              child: Container(
                                                width: getHorizontalSize(116),
                                                padding: getPadding(
                                                  top: 5,
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
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgTime116x56,
                                                      height:
                                                          getVerticalSize(16),
                                                      width:
                                                          getHorizontalSize(56),
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
                                                          mainAxisSize:
                                                              MainAxisSize.min,
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
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: getVerticalSize(361),
                              width: getHorizontalSize(342),
                              margin: getMargin(
                                top: 5,
                              ),
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgGroupPrimary,
                                    height: getSize(342),
                                    width: getSize(342),
                                    alignment: Alignment.bottomLeft,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgGroupfamily2,
                                    height: getVerticalSize(226),
                                    width: getHorizontalSize(292),
                                    alignment: Alignment.topLeft,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: IntrinsicWidth(
                      child: Padding(
                        padding: getPadding(
                          right: 2151,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: getMargin(
                                left: 6,
                                right: 6,
                              ),
                              decoration: AppDecoration.outlinePink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
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
                                      "msg_priyanka_s_higher".tr,
                                      style: CustomTextStyles
                                          .titleSmallOnPrimary_1,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 6,
                                      bottom: 14,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Expanded(
                                          child: SizedBox(
                                            width: getHorizontalSize(220),
                                            child: Text(
                                              "msg_as_indians_our".tr,
                                              maxLines: null,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.justify,
                                              style: CustomTextStyles
                                                  .labelMediumBluegray80001
                                                  .copyWith(
                                                height: 1.40,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: getSize(80),
                                          width: getSize(80),
                                          padding: getPadding(
                                            left: 5,
                                            right: 5,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder5,
                                          ),
                                          child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgAsd270x70,
                                            height: getSize(70),
                                            width: getSize(70),
                                            alignment: Alignment.bottomCenter,
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
                                top: 4,
                                bottom: 4,
                              ),
                              decoration:
                                  AppDecoration.gradientPinkToPink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 4,
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
                                            text: "lbl_3_8l".tr,
                                            style: theme.textTheme.displaySmall,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: getPadding(
                                        top: 1,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_target_value".tr,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "lbl_down_payment".tr,
                                                  style: CustomTextStyles
                                                      .bodySmallOrange500,
                                                ),
                                                TextSpan(
                                                  text: "lbl_rs".tr,
                                                  style:
                                                      theme.textTheme.bodySmall,
                                                ),
                                                TextSpan(
                                                  text: "lbl_75".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallOnPrimary_2,
                                                ),
                                                TextSpan(
                                                  text: "lbl_k".tr,
                                                  style:
                                                      theme.textTheme.bodySmall,
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
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
                                top: 3,
                                right: 15,
                                bottom: 3,
                              ),
                              decoration:
                                  AppDecoration.gradientOrangeToPink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 10,
                                      bottom: 10,
                                    ),
                                    child: Text(
                                      "msg_already_achieved2".tr,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 6,
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
                                            text: "lbl_0".tr,
                                            style: theme.textTheme.displaySmall,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.right,
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
                                top: 3,
                                right: 15,
                                bottom: 3,
                              ),
                              decoration:
                                  AppDecoration.gradientPinkToPink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 10,
                                      bottom: 10,
                                    ),
                                    child: Text(
                                      "lbl_target_date".tr,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 80,
                                      top: 6,
                                    ),
                                    child: Text(
                                      "lbl_12_jan_2034".tr,
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
                                top: 4,
                                bottom: 4,
                              ),
                              decoration:
                                  AppDecoration.gradientOrangeToPink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 4,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "lbl_loan".tr,
                                            style: CustomTextStyles
                                                .titleSmallOnPrimaryMedium,
                                          ),
                                          TextSpan(
                                            text: "lbl_rs".tr,
                                            style: CustomTextStyles
                                                .titleSmallOnPrimaryMedium,
                                          ),
                                          TextSpan(
                                            text: "lbl_3_05l".tr,
                                            style: theme.textTheme.displaySmall,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: getPadding(
                                        top: 1,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_changes".tr,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "lbl_down_payment".tr,
                                                  style: CustomTextStyles
                                                      .bodySmallOrange500,
                                                ),
                                                TextSpan(
                                                  text: "lbl_rs".tr,
                                                  style:
                                                      theme.textTheme.bodySmall,
                                                ),
                                                TextSpan(
                                                  text: "lbl_75".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallOnPrimary_2,
                                                ),
                                                TextSpan(
                                                  text: "lbl_k".tr,
                                                  style:
                                                      theme.textTheme.bodySmall,
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
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
                                top: 4,
                                right: 15,
                                bottom: 4,
                              ),
                              decoration:
                                  AppDecoration.gradientPinkToPink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 9,
                                      bottom: 9,
                                    ),
                                    child: Text(
                                      "msg_monthly_investment".tr,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 97,
                                      top: 4,
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
                                            text: "lbl_400".tr,
                                            style: theme.textTheme.displaySmall,
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
                                top: 10,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Expanded(
                                    child: Column(
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
                                                alignment: Alignment.centerLeft,
                                                child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgGroup113,
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
                                              width: getHorizontalSize(116),
                                              padding: getPadding(
                                                top: 5,
                                                bottom: 5,
                                              ),
                                              decoration: AppDecoration
                                                  .outlineOrange
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder20,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgTime11,
                                                    height: getVerticalSize(16),
                                                    width:
                                                        getHorizontalSize(56),
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
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Text(
                                                            "lbl_year".tr,
                                                            textAlign:
                                                                TextAlign.right,
                                                            style: theme
                                                                .textTheme
                                                                .labelSmall,
                                                          ),
                                                          Padding(
                                                            padding: getPadding(
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
                                  ),
                                  Expanded(
                                    child: Padding(
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
                                              alignment: Alignment.centerRight,
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
                                              left: 8,
                                              top: 5,
                                              right: 21,
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
                                                width: getHorizontalSize(116),
                                                padding: getPadding(
                                                  top: 5,
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
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgTime12,
                                                      height:
                                                          getVerticalSize(16),
                                                      width:
                                                          getHorizontalSize(56),
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
                                                          mainAxisSize:
                                                              MainAxisSize.min,
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
                                alignment: Alignment.topLeft,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgGroupPrimary,
                                    height: getSize(342),
                                    width: getSize(342),
                                    alignment: Alignment.centerLeft,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEdrg1,
                                    height: getVerticalSize(248),
                                    width: getHorizontalSize(194),
                                    alignment: Alignment.topLeft,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: IntrinsicWidth(
                      child: Padding(
                        padding: getPadding(
                          right: 1791,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: getMargin(
                                left: 6,
                                right: 6,
                              ),
                              decoration: AppDecoration.outlinePink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
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
                                      "msg_pritam_s_higher".tr,
                                      style: CustomTextStyles
                                          .titleSmallOnPrimary_1,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 6,
                                      bottom: 14,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Expanded(
                                          child: SizedBox(
                                            width: getHorizontalSize(220),
                                            child: Text(
                                              "msg_as_indians_our".tr,
                                              maxLines: null,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .labelMediumBluegray80001
                                                  .copyWith(
                                                height: 1.40,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: getSize(80),
                                          width: getSize(80),
                                          padding: getPadding(
                                            left: 5,
                                            right: 5,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder5,
                                          ),
                                          child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgAsd270x70,
                                            height: getSize(70),
                                            width: getSize(70),
                                            alignment: Alignment.bottomCenter,
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
                                top: 11,
                                right: 6,
                              ),
                              padding: getPadding(
                                top: 4,
                                bottom: 4,
                              ),
                              decoration:
                                  AppDecoration.gradientPinkToPink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 3,
                                      bottom: 1,
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
                                            text: "lbl_4_8l".tr,
                                            style: theme.textTheme.displaySmall,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: getPadding(
                                        top: 1,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_target_value".tr,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "lbl_down_payment".tr,
                                                  style: CustomTextStyles
                                                      .bodySmallOrange500,
                                                ),
                                                TextSpan(
                                                  text: "lbl_rs".tr,
                                                  style:
                                                      theme.textTheme.bodySmall,
                                                ),
                                                TextSpan(
                                                  text: "lbl_96".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallOnPrimary_2,
                                                ),
                                                TextSpan(
                                                  text: "lbl_k".tr,
                                                  style:
                                                      theme.textTheme.bodySmall,
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
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
                                top: 4,
                                right: 15,
                                bottom: 4,
                              ),
                              decoration:
                                  AppDecoration.gradientOrangeToPink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 9,
                                      bottom: 9,
                                    ),
                                    child: Text(
                                      "msg_already_achieved2".tr,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 4,
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
                                            text: "lbl_0".tr,
                                            style: theme.textTheme.displaySmall,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.right,
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
                                top: 4,
                                right: 15,
                                bottom: 4,
                              ),
                              decoration:
                                  AppDecoration.gradientPinkToPink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 9,
                                      bottom: 9,
                                    ),
                                    child: Text(
                                      "lbl_target_date".tr,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 81,
                                      top: 4,
                                    ),
                                    child: Text(
                                      "lbl_12_jan_2038".tr,
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
                                top: 4,
                                bottom: 4,
                              ),
                              decoration:
                                  AppDecoration.gradientOrangeToPink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 4,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "lbl_loan".tr,
                                            style: CustomTextStyles
                                                .titleSmallOnPrimaryMedium,
                                          ),
                                          TextSpan(
                                            text: "lbl_rs".tr,
                                            style: CustomTextStyles
                                                .titleSmallOnPrimaryMedium,
                                          ),
                                          TextSpan(
                                            text: "lbl_3_84l".tr,
                                            style: theme.textTheme.displaySmall,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: getPadding(
                                        top: 1,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_changes".tr,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "lbl_down_payment".tr,
                                                  style: CustomTextStyles
                                                      .bodySmallOrange500,
                                                ),
                                                TextSpan(
                                                  text: "lbl_rs".tr,
                                                  style:
                                                      theme.textTheme.bodySmall,
                                                ),
                                                TextSpan(
                                                  text: "lbl_96".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallOnPrimary_2,
                                                ),
                                                TextSpan(
                                                  text: "lbl_k".tr,
                                                  style:
                                                      theme.textTheme.bodySmall,
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
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
                                top: 4,
                                right: 15,
                                bottom: 4,
                              ),
                              decoration:
                                  AppDecoration.gradientPinkToPink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 9,
                                      bottom: 9,
                                    ),
                                    child: Text(
                                      "msg_monthly_investment".tr,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 100,
                                      top: 4,
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
                                            text: "lbl_300".tr,
                                            style: theme.textTheme.displaySmall,
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
                                top: 9,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Expanded(
                                    child: Column(
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
                                                alignment: Alignment.centerLeft,
                                                child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgGroup113,
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
                                              width: getHorizontalSize(116),
                                              padding: getPadding(
                                                top: 5,
                                                bottom: 5,
                                              ),
                                              decoration: AppDecoration
                                                  .outlineOrange
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder20,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgTime11,
                                                    height: getVerticalSize(16),
                                                    width:
                                                        getHorizontalSize(56),
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
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Text(
                                                            "lbl_year".tr,
                                                            textAlign:
                                                                TextAlign.right,
                                                            style: theme
                                                                .textTheme
                                                                .labelSmall,
                                                          ),
                                                          Padding(
                                                            padding: getPadding(
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
                                  ),
                                  Expanded(
                                    child: Padding(
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
                                              alignment: Alignment.centerRight,
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
                                              strokeWidth: getHorizontalSize(1),
                                              radius: Radius.circular(20),
                                              borderType: BorderType.RRect,
                                              dashPattern: [
                                                3,
                                                3,
                                              ],
                                              child: Container(
                                                width: getHorizontalSize(116),
                                                padding: getPadding(
                                                  top: 5,
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
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgTime13,
                                                      height:
                                                          getVerticalSize(16),
                                                      width:
                                                          getHorizontalSize(56),
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
                                                          mainAxisSize:
                                                              MainAxisSize.min,
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
                                alignment: Alignment.topLeft,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgGroupPrimary,
                                    height: getSize(342),
                                    width: getSize(342),
                                    alignment: Alignment.centerLeft,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgBoy21,
                                    height: getVerticalSize(234),
                                    width: getHorizontalSize(193),
                                    alignment: Alignment.topLeft,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: IntrinsicWidth(
                      child: Padding(
                        padding: getPadding(
                          right: 1431,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: getMargin(
                                left: 6,
                                right: 6,
                              ),
                              decoration: AppDecoration.outlinePink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
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
                                      "msg_priyanka_s_grand".tr,
                                      style: CustomTextStyles
                                          .titleSmallOnPrimary_1,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 6,
                                      bottom: 10,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Expanded(
                                          child: SizedBox(
                                            width: getHorizontalSize(220),
                                            child: Text(
                                              "msg_as_indians_our".tr,
                                              maxLines: null,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .labelMediumBluegray80001
                                                  .copyWith(
                                                height: 1.40,
                                              ),
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
                                            imagePath: ImageConstant.imgAsd21,
                                            height: getSize(70),
                                            width: getSize(70),
                                            alignment: Alignment.bottomCenter,
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
                                top: 11,
                                right: 6,
                              ),
                              padding: getPadding(
                                left: 15,
                                top: 5,
                                right: 15,
                                bottom: 5,
                              ),
                              decoration:
                                  AppDecoration.gradientPinkToPink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 8,
                                      bottom: 8,
                                    ),
                                    child: Text(
                                      "lbl_target_value".tr,
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
                                            text: "lbl_rs".tr,
                                            style: CustomTextStyles
                                                .titleSmallOnPrimaryMedium,
                                          ),
                                          TextSpan(
                                            text: "lbl_8_08l".tr,
                                            style: theme.textTheme.displaySmall,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.right,
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
                                top: 4,
                                right: 15,
                                bottom: 4,
                              ),
                              decoration:
                                  AppDecoration.gradientOrangeToPink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 9,
                                      bottom: 9,
                                    ),
                                    child: Text(
                                      "msg_already_achieved2".tr,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 4,
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
                                            text: "lbl_0".tr,
                                            style: theme.textTheme.displaySmall,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.right,
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
                                top: 4,
                                right: 15,
                                bottom: 4,
                              ),
                              decoration:
                                  AppDecoration.gradientPinkToPink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 9,
                                      bottom: 9,
                                    ),
                                    child: Text(
                                      "lbl_target_date".tr,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 78,
                                      top: 4,
                                    ),
                                    child: Text(
                                      "lbl_12_jan_2040".tr,
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
                                top: 4,
                                right: 15,
                                bottom: 4,
                              ),
                              decoration:
                                  AppDecoration.gradientOrangeToPink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 9,
                                      bottom: 9,
                                    ),
                                    child: Text(
                                      "lbl_changes".tr,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 4,
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
                                            text: "lbl_3_years".tr,
                                            style: theme.textTheme.displaySmall,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.right,
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
                                top: 4,
                                right: 15,
                                bottom: 4,
                              ),
                              decoration:
                                  AppDecoration.gradientPinkToPink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 9,
                                      bottom: 9,
                                    ),
                                    child: Text(
                                      "msg_monthly_investment".tr,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 98,
                                      top: 4,
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
                                            text: "lbl_900".tr,
                                            style: theme.textTheme.displaySmall,
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
                                top: 9,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Expanded(
                                    child: Column(
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
                                                alignment: Alignment.centerLeft,
                                                child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgGroup113,
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
                                              width: getHorizontalSize(116),
                                              padding: getPadding(
                                                top: 5,
                                                bottom: 5,
                                              ),
                                              decoration: AppDecoration
                                                  .outlineOrange
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder20,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgTime11,
                                                    height: getVerticalSize(16),
                                                    width:
                                                        getHorizontalSize(56),
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
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Text(
                                                            "lbl_year".tr,
                                                            textAlign:
                                                                TextAlign.right,
                                                            style: theme
                                                                .textTheme
                                                                .labelSmall,
                                                          ),
                                                          Padding(
                                                            padding: getPadding(
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
                                  ),
                                  Expanded(
                                    child: Padding(
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
                                              alignment: Alignment.centerRight,
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
                                              strokeWidth: getHorizontalSize(1),
                                              radius: Radius.circular(20),
                                              borderType: BorderType.RRect,
                                              dashPattern: [
                                                3,
                                                3,
                                              ],
                                              child: Container(
                                                width: getHorizontalSize(116),
                                                padding: getPadding(
                                                  top: 5,
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
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgTime14,
                                                      height:
                                                          getVerticalSize(16),
                                                      width:
                                                          getHorizontalSize(56),
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
                                                          mainAxisSize:
                                                              MainAxisSize.min,
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
                                alignment: Alignment.topLeft,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgGroupPrimary,
                                    height: getSize(342),
                                    width: getSize(342),
                                    alignment: Alignment.centerLeft,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEdrg1259x194,
                                    height: getVerticalSize(259),
                                    width: getHorizontalSize(194),
                                    alignment: Alignment.topLeft,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: IntrinsicWidth(
                      child: Padding(
                        padding: getPadding(
                          right: 1071,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: getMargin(
                                left: 6,
                                right: 6,
                              ),
                              decoration: AppDecoration.outlinePink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                      "lbl_our_dream_house".tr,
                                      style: CustomTextStyles
                                          .titleSmallOnPrimary_1,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 4,
                                      bottom: 5,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Expanded(
                                          child: SizedBox(
                                            width: getHorizontalSize(220),
                                            child: Text(
                                              "msg".tr,
                                              maxLines: null,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .labelSmallSemiBold
                                                  .copyWith(
                                                height: 1.44,
                                              ),
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
                                            imagePath: ImageConstant.imgAsd22,
                                            height: getSize(70),
                                            width: getSize(70),
                                            alignment: Alignment.bottomCenter,
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
                                top: 4,
                                bottom: 4,
                              ),
                              decoration:
                                  AppDecoration.gradientPinkToPink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 4,
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
                                            style: theme.textTheme.displaySmall,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: getPadding(
                                        top: 1,
                                        bottom: 4,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl2".tr,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "lbl_down_payment".tr,
                                                  style: CustomTextStyles
                                                      .bodySmallOrange500,
                                                ),
                                                TextSpan(
                                                  text: "lbl_rs".tr,
                                                  style:
                                                      theme.textTheme.bodySmall,
                                                ),
                                                TextSpan(
                                                  text: "lbl_4_82".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallOnPrimary_2,
                                                ),
                                                TextSpan(
                                                  text: "lbl_l".tr,
                                                  style:
                                                      theme.textTheme.bodySmall,
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
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
                                top: 3,
                                right: 15,
                                bottom: 3,
                              ),
                              decoration:
                                  AppDecoration.gradientOrangeToPink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 10,
                                      bottom: 10,
                                    ),
                                    child: Text(
                                      "msg_already_achieved2".tr,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 6,
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
                                            text: "lbl_0".tr,
                                            style: theme.textTheme.displaySmall,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.right,
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
                                top: 3,
                                right: 15,
                                bottom: 3,
                              ),
                              decoration:
                                  AppDecoration.gradientPinkToPink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 10,
                                      bottom: 10,
                                    ),
                                    child: Text(
                                      "lbl_target_date".tr,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 82,
                                      top: 6,
                                    ),
                                    child: Text(
                                      "lbl_12_jan_2035".tr,
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
                                top: 3,
                                right: 15,
                                bottom: 3,
                              ),
                              decoration:
                                  AppDecoration.gradientOrangeToPink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 10,
                                      bottom: 10,
                                    ),
                                    child: Text(
                                      "lbl_changes".tr,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 6,
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
                                            style: theme.textTheme.displaySmall,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.right,
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
                                top: 3,
                                right: 15,
                                bottom: 3,
                              ),
                              decoration:
                                  AppDecoration.gradientPinkToPink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 10,
                                      bottom: 10,
                                    ),
                                    child: Text(
                                      "msg_monthly_investment".tr,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 87,
                                      top: 6,
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
                                            style: theme.textTheme.displaySmall,
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
                                top: 10,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Expanded(
                                    child: Column(
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
                                                alignment: Alignment.centerLeft,
                                                child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgGroup113,
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
                                              width: getHorizontalSize(116),
                                              padding: getPadding(
                                                top: 5,
                                                bottom: 5,
                                              ),
                                              decoration: AppDecoration
                                                  .outlineOrange
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder20,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgTime11,
                                                    height: getVerticalSize(16),
                                                    width:
                                                        getHorizontalSize(56),
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
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Text(
                                                            "lbl_year".tr,
                                                            textAlign:
                                                                TextAlign.right,
                                                            style: theme
                                                                .textTheme
                                                                .labelSmall,
                                                          ),
                                                          Padding(
                                                            padding: getPadding(
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
                                  ),
                                  Expanded(
                                    child: Padding(
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
                                              alignment: Alignment.centerRight,
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
                                              strokeWidth: getHorizontalSize(1),
                                              radius: Radius.circular(20),
                                              borderType: BorderType.RRect,
                                              dashPattern: [
                                                3,
                                                3,
                                              ],
                                              child: Container(
                                                width: getHorizontalSize(116),
                                                padding: getPadding(
                                                  top: 5,
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
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgTime15,
                                                      height:
                                                          getVerticalSize(16),
                                                      width:
                                                          getHorizontalSize(56),
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
                                                          mainAxisSize:
                                                              MainAxisSize.min,
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
                                alignment: Alignment.topLeft,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgGroupPrimary,
                                    height: getSize(342),
                                    width: getSize(342),
                                    alignment: Alignment.centerLeft,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgMe21,
                                    height: getVerticalSize(314),
                                    width: getHorizontalSize(204),
                                    alignment: Alignment.topLeft,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: IntrinsicWidth(
                      child: Padding(
                        padding: getPadding(
                          right: 711,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: getMargin(
                                left: 6,
                                right: 6,
                              ),
                              decoration: AppDecoration.outlinePink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
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
                                      top: 6,
                                      bottom: 10,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Expanded(
                                          child: SizedBox(
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
                                            imagePath: ImageConstant.imgAsd23,
                                            height: getSize(70),
                                            width: getSize(70),
                                            alignment: Alignment.bottomCenter,
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
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
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
                                          style: theme.textTheme.displaySmall,
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
                                  AppDecoration.gradientOrangeToPink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
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
                                          style: theme.textTheme.displaySmall,
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
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
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
                              decoration:
                                  AppDecoration.gradientOrangeToPink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
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
                                          style: theme.textTheme.displaySmall,
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
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
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
                                            style: theme.textTheme.displaySmall,
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
                                top: 10,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Expanded(
                                    child: Column(
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
                                                alignment: Alignment.centerLeft,
                                                child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgGroup113,
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
                                              width: getHorizontalSize(116),
                                              padding: getPadding(
                                                top: 5,
                                                bottom: 5,
                                              ),
                                              decoration: AppDecoration
                                                  .outlineOrange
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder20,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgTime11,
                                                    height: getVerticalSize(16),
                                                    width:
                                                        getHorizontalSize(56),
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
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Text(
                                                            "lbl_year".tr,
                                                            textAlign:
                                                                TextAlign.right,
                                                            style: theme
                                                                .textTheme
                                                                .labelSmall,
                                                          ),
                                                          Padding(
                                                            padding: getPadding(
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
                                  ),
                                  Expanded(
                                    child: Padding(
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
                                              alignment: Alignment.centerRight,
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
                                              strokeWidth: getHorizontalSize(1),
                                              radius: Radius.circular(20),
                                              borderType: BorderType.RRect,
                                              dashPattern: [
                                                3,
                                                3,
                                              ],
                                              child: Container(
                                                width: getHorizontalSize(116),
                                                padding: getPadding(
                                                  top: 5,
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
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgTime16,
                                                      height:
                                                          getVerticalSize(16),
                                                      width:
                                                          getHorizontalSize(56),
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
                                                          mainAxisSize:
                                                              MainAxisSize.min,
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
                                alignment: Alignment.topLeft,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgGroupPrimary,
                                    height: getSize(342),
                                    width: getSize(342),
                                    alignment: Alignment.centerLeft,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgFamily21,
                                    height: getVerticalSize(220),
                                    width: getHorizontalSize(302),
                                    alignment: Alignment.topLeft,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getVerticalSize(720),
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: getVerticalSize(443),
                                width: double.maxFinite,
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        padding: getPadding(
                                          left: 78,
                                          top: 12,
                                          right: 78,
                                          bottom: 12,
                                        ),
                                        decoration: AppDecoration.fillRedA,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "lbl_term_insurance".tr,
                                              style:
                                                  theme.textTheme.headlineLarge,
                                            ),
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgShield1190x190,
                                              height: getSize(190),
                                              width: getSize(190),
                                              margin: getMargin(
                                                top: 5,
                                                bottom: 5,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgVector1RedA700,
                                      height: getVerticalSize(44),
                                      width: getHorizontalSize(359),
                                      alignment: Alignment.bottomCenter,
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 99,
                                          right: 99,
                                          bottom: 26,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "lbl3".tr,
                                              style:
                                                  theme.textTheme.headlineLarge,
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgRisk21,
                                              height: getVerticalSize(60),
                                              width: getHorizontalSize(157),
                                              margin: getMargin(
                                                top: 4,
                                              ),
                                            ),
                                            Text(
                                              "lbl4".tr,
                                              style:
                                                  theme.textTheme.headlineLarge,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 30,
                                  top: 39,
                                  right: 30,
                                ),
                                child: BlocSelector<
                                    AndroidLargeEightBloc,
                                    AndroidLargeEightState,
                                    AndroidLargeEightModel?>(
                                  selector: (state) =>
                                      state.androidLargeEightModelObj,
                                  builder:
                                      (context, androidLargeEightModelObj) {
                                    return ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (
                                        context,
                                        index,
                                      ) {
                                        return SizedBox(
                                          height: getVerticalSize(10),
                                        );
                                      },
                                      itemCount: androidLargeEightModelObj
                                              ?.listcoverneededItemList
                                              .length ??
                                          0,
                                      itemBuilder: (context, index) {
                                        ListcoverneededItemModel model =
                                            androidLargeEightModelObj
                                                        ?.listcoverneededItemList[
                                                    index] ??
                                                ListcoverneededItemModel();
                                        return ListcoverneededItemWidget(
                                          model,
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomElevatedButton(
                          width: getHorizontalSize(180),
                          text: "lbl_final_summary".tr,
                          margin: getMargin(
                            bottom: 10,
                          ),
                          buttonStyle: CustomButtonStyles.outlineBlack,
                          alignment: Alignment.bottomCenter,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getVerticalSize(720),
                    width: double.maxFinite,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: IntrinsicWidth(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: getMargin(
                              left: 6,
                              right: 6,
                            ),
                            decoration: AppDecoration.outlinePink.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
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
                                    "lbl_emergancy_fund".tr,
                                    style:
                                        CustomTextStyles.titleSmallOnPrimary_1,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 10,
                                    top: 6,
                                    right: 10,
                                    bottom: 13,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: getHorizontalSize(220),
                                        margin: getMargin(
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          "msg_as_indians_our".tr,
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
                                        height: getVerticalSize(81),
                                        width: getHorizontalSize(80),
                                        margin: getMargin(
                                          left: 10,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath: ImageConstant.imgAsd2,
                                              height: getVerticalSize(80),
                                              width: getHorizontalSize(75),
                                              alignment: Alignment.centerLeft,
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                height: getSize(80),
                                                width: getSize(80),
                                                padding: getPadding(
                                                  left: 6,
                                                  right: 6,
                                                ),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder5,
                                                ),
                                                child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgAsd2,
                                                  height: getVerticalSize(70),
                                                  width: getHorizontalSize(66),
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                ),
                                              ),
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
                          Container(
                            margin: getMargin(
                              left: 6,
                              top: 10,
                              right: 6,
                            ),
                            padding: getPadding(
                              left: 15,
                              top: 4,
                              right: 15,
                              bottom: 4,
                            ),
                            decoration:
                                AppDecoration.gradientPinkToPink.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 9,
                                    bottom: 9,
                                  ),
                                  child: Text(
                                    "lbl_target_value".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 4,
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
                                          text: "lbl_90".tr,
                                          style: theme.textTheme.displaySmall,
                                        ),
                                        TextSpan(
                                          text: "lbl_k".tr,
                                          style: CustomTextStyles
                                              .titleSmallOnPrimaryMedium,
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
                              top: 3,
                              right: 15,
                              bottom: 3,
                            ),
                            decoration:
                                AppDecoration.gradientOrangeToPink.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 2,
                                    bottom: 2,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "msg_already_achieved".tr,
                                        style: theme.textTheme.titleSmall,
                                      ),
                                      Text(
                                        "lbl_12_jan_2023".tr,
                                        style: CustomTextStyles
                                            .bodySmallOrange50012,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 6,
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
                                          text: "lbl_40".tr,
                                          style: theme.textTheme.displaySmall,
                                        ),
                                        TextSpan(
                                          text: "lbl_k".tr,
                                          style: CustomTextStyles
                                              .titleSmallOnPrimaryMedium,
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
                              top: 3,
                              right: 15,
                              bottom: 3,
                            ),
                            decoration:
                                AppDecoration.gradientPinkToPink.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  child: Text(
                                    "lbl_target_date".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 6,
                                  ),
                                  child: Text(
                                    "lbl_12_jan_2023".tr,
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
                              top: 4,
                              right: 15,
                              bottom: 4,
                            ),
                            decoration:
                                AppDecoration.gradientOrangeToPink.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 9,
                                    bottom: 9,
                                  ),
                                  child: Text(
                                    "msg_monthly_investment".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 4,
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
                                          text: "lbl_1300".tr,
                                          style: theme.textTheme.displaySmall,
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
                              top: 63,
                              right: 6,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: getPadding(
                                      right: 20,
                                    ),
                                    child: Column(
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
                                                alignment: Alignment.centerLeft,
                                                child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgGroup113,
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
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder20,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgTime1,
                                                    height: getVerticalSize(16),
                                                    width:
                                                        getHorizontalSize(56),
                                                    alignment: Alignment.center,
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
                                                                TextAlign.right,
                                                            style: theme
                                                                .textTheme
                                                                .labelSmall,
                                                          ),
                                                          Padding(
                                                            padding: getPadding(
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
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: getPadding(
                                      left: 20,
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
                                            alignment: Alignment.centerRight,
                                            children: [
                                              Align(
                                                alignment: Alignment.centerLeft,
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
                                                    textAlign: TextAlign.right,
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
                                                    Alignment.centerRight,
                                                child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgGroup111,
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
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder20,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgTime116x56,
                                                    height: getVerticalSize(16),
                                                    width:
                                                        getHorizontalSize(56),
                                                    alignment: Alignment.center,
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
                                                                TextAlign.right,
                                                            style: theme
                                                                .textTheme
                                                                .labelSmall,
                                                          ),
                                                          Padding(
                                                            padding: getPadding(
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
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: getVerticalSize(361),
                            width: getHorizontalSize(342),
                            margin: getMargin(
                              top: 5,
                            ),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgGroupPrimary,
                                  height: getSize(342),
                                  width: getSize(342),
                                  alignment: Alignment.bottomCenter,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgGroupfamily2,
                                  height: getVerticalSize(226),
                                  width: getHorizontalSize(292),
                                  alignment: Alignment.topCenter,
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
          ),
        ),
      ),
    );
  }
}
