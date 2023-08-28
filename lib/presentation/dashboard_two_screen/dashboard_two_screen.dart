import 'bloc/dashboard_two_bloc.dart';
import 'models/dashboard_two_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/with_surrender_page/with_surrender_page.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:samruddhi_s_application1/widgets/custom_bottom_app_bar.dart';
import 'package:samruddhi_s_application1/widgets/custom_elevated_button.dart';

class DashboardTwoScreen extends StatelessWidget {
  DashboardTwoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<DashboardTwoBloc>(
      create: (context) => DashboardTwoBloc(DashboardTwoState(
        dashboardTwoModelObj: DashboardTwoModel(),
      ))
        ..add(DashboardTwoInitialEvent()),
      child: DashboardTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<DashboardTwoBloc, DashboardTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
            appBar: CustomAppBar(
              height: getVerticalSize(50),
              leadingWidth: getHorizontalSize(34),
              leading: AppbarImage(
                imagePath: ImageConstant.imgMenu1,
                margin: getMargin(
                  left: 8,
                  top: 12,
                  bottom: 12,
                ),
              ),
              centerTitle: true,
              title: AppbarImage1(
                imagePath: ImageConstant.imgBadibahenlogomascot0105,
              ),
              actions: [
                Container(
                  margin: getMargin(
                    left: 15,
                    top: 18,
                    right: 15,
                    bottom: 18,
                  ),
                  padding: getPadding(
                    left: 2,
                    right: 2,
                  ),
                  decoration: AppDecoration.outlineOrange5003.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder2,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: getSize(10),
                        width: getSize(10),
                        margin: getMargin(
                          top: 2,
                          bottom: 2,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.orange500,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(2),
                          ),
                        ),
                      ),
                      AppbarSubtitle2(
                        text: "lbl7".tr.toUpperCase(),
                        margin: getMargin(
                          left: 4,
                          right: 5,
                          bottom: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
              styleType: Style.bgShadow,
            ),
            body: Container(
              width: getHorizontalSize(340),
              margin: getMargin(
                left: 10,
                top: 10,
                right: 10,
              ),
              decoration: AppDecoration.fillGray300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DottedBorder(
                    color: appTheme.gray600,
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(1),
                      top: getVerticalSize(1),
                      right: getHorizontalSize(1),
                      bottom: getVerticalSize(1),
                    ),
                    strokeWidth: getHorizontalSize(1),
                    radius: Radius.circular(5),
                    borderType: BorderType.RRect,
                    dashPattern: [
                      2,
                      2,
                    ],
                    child: Container(
                      padding: getPadding(
                        left: 54,
                        top: 3,
                        right: 54,
                        bottom: 3,
                      ),
                      decoration: AppDecoration.outlineGray600.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 1,
                            ),
                            child: Text(
                              "msg_buddhadev_changdar".tr,
                              style: CustomTextStyles.titleLargeRedA70001Bold,
                            ),
                          ),
                          CustomElevatedButton(
                            height: getVerticalSize(30),
                            text: "msg_digital_workforce2".tr,
                            margin: getMargin(
                              left: 24,
                              top: 3,
                              right: 38,
                              bottom: 6,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: getVerticalSize(266),
                    width: getHorizontalSize(340),
                    margin: getMargin(
                      top: 14,
                    ),
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: getVerticalSize(240),
                            width: getHorizontalSize(207),
                            margin: getMargin(
                              top: 1,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: getSize(207),
                                    width: getSize(207),
                                    decoration: BoxDecoration(
                                      color:
                                          appTheme.redA70001.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(103),
                                      ),
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgMe21,
                                  height: getVerticalSize(238),
                                  width: getHorizontalSize(155),
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            height: getVerticalSize(47),
                            width: getHorizontalSize(100),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    padding: getPadding(
                                      left: 30,
                                      top: 7,
                                      right: 30,
                                      bottom: 7,
                                    ),
                                    decoration: AppDecoration.outlineOrange5003
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10,
                                    ),
                                    child: Padding(
                                      padding: getPadding(
                                        top: 4,
                                      ),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "lbl_0".tr,
                                              style: CustomTextStyles
                                                  .headlineSmallBluegray80001_1,
                                            ),
                                            TextSpan(
                                              text: " ",
                                            ),
                                            TextSpan(
                                              text: "lbl_lakh".tr,
                                              style: CustomTextStyles
                                                  .labelLargeBluegray80001Medium_1,
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    padding: getPadding(
                                      left: 9,
                                      top: 1,
                                      right: 9,
                                      bottom: 1,
                                    ),
                                    decoration:
                                        AppDecoration.fillOrange.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5,
                                    ),
                                    child: Text(
                                      "lbl_total_assets".tr,
                                      style: CustomTextStyles
                                          .labelSmallOnPrimary_1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: SizedBox(
                            height: getVerticalSize(47),
                            width: getHorizontalSize(100),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    padding: getPadding(
                                      left: 38,
                                      top: 7,
                                      right: 38,
                                      bottom: 7,
                                    ),
                                    decoration: AppDecoration.outlineOrange5003
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10,
                                    ),
                                    child: Padding(
                                      padding: getPadding(
                                        top: 4,
                                      ),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "lbl_0".tr,
                                              style: CustomTextStyles
                                                  .headlineSmallBluegray80001_1,
                                            ),
                                            TextSpan(
                                              text: " ",
                                            ),
                                            TextSpan(
                                              text: "lbl_k".tr,
                                              style: CustomTextStyles
                                                  .labelLargeBluegray80001Medium_1,
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    padding: getPadding(
                                      left: 7,
                                      top: 1,
                                      right: 7,
                                      bottom: 1,
                                    ),
                                    decoration:
                                        AppDecoration.fillOrange.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5,
                                    ),
                                    child: Text(
                                      "msg_total_financial".tr,
                                      style: CustomTextStyles
                                          .labelSmallOnPrimary_1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: SizedBox(
                            height: getVerticalSize(47),
                            width: getHorizontalSize(100),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    padding: getPadding(
                                      left: 30,
                                      top: 7,
                                      right: 30,
                                      bottom: 7,
                                    ),
                                    decoration: AppDecoration.outlineOrange5003
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10,
                                    ),
                                    child: Padding(
                                      padding: getPadding(
                                        top: 4,
                                      ),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "lbl_0".tr,
                                              style: CustomTextStyles
                                                  .headlineSmallBluegray80001_1,
                                            ),
                                            TextSpan(
                                              text: " ",
                                            ),
                                            TextSpan(
                                              text: "lbl_lakh".tr,
                                              style: CustomTextStyles
                                                  .labelLargeBluegray80001Medium_1,
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    padding: getPadding(
                                      left: 8,
                                      top: 1,
                                      right: 8,
                                      bottom: 1,
                                    ),
                                    decoration:
                                        AppDecoration.fillOrange.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5,
                                    ),
                                    child: Text(
                                      "lbl_total_net_worth".tr,
                                      style: CustomTextStyles
                                          .labelSmallOnPrimary_1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: SizedBox(
                            height: getVerticalSize(47),
                            width: getHorizontalSize(100),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    padding: getPadding(
                                      left: 30,
                                      top: 7,
                                      right: 30,
                                      bottom: 7,
                                    ),
                                    decoration: AppDecoration.outlineOrange5003
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10,
                                    ),
                                    child: Padding(
                                      padding: getPadding(
                                        top: 4,
                                      ),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "lbl_0".tr,
                                              style: CustomTextStyles
                                                  .headlineSmallBluegray80001_1,
                                            ),
                                            TextSpan(
                                              text: " ",
                                            ),
                                            TextSpan(
                                              text: "lbl_lakh".tr,
                                              style: CustomTextStyles
                                                  .labelLargeBluegray80001Medium_1,
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    padding: getPadding(
                                      left: 7,
                                      top: 1,
                                      right: 7,
                                      bottom: 1,
                                    ),
                                    decoration:
                                        AppDecoration.fillOrange.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5,
                                    ),
                                    child: Text(
                                      "msg_financial_net_worth".tr,
                                      style: CustomTextStyles
                                          .labelSmallOnPrimary_1,
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
                    height: getVerticalSize(47),
                    width: getHorizontalSize(100),
                    margin: getMargin(
                      top: 5,
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: getPadding(
                              left: 30,
                              top: 7,
                              right: 30,
                              bottom: 7,
                            ),
                            decoration:
                                AppDecoration.outlineOrange5003.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Padding(
                              padding: getPadding(
                                top: 4,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_0".tr,
                                      style: CustomTextStyles
                                          .headlineSmallBluegray80001_1,
                                    ),
                                    TextSpan(
                                      text: " ",
                                    ),
                                    TextSpan(
                                      text: "lbl_lakh".tr,
                                      style: CustomTextStyles
                                          .labelLargeBluegray80001Medium_1,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            padding: getPadding(
                              left: 8,
                              top: 1,
                              right: 8,
                              bottom: 1,
                            ),
                            decoration: AppDecoration.fillOrange.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Text(
                              "lbl_liabilities".tr,
                              style: CustomTextStyles.labelSmallOnPrimary_1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 4,
                      top: 8,
                      right: 2,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: getVerticalSize(105),
                          width: getHorizontalSize(95),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgVectorOnprimary,
                                height: getVerticalSize(75),
                                width: getHorizontalSize(74),
                                alignment: Alignment.bottomCenter,
                                margin: getMargin(
                                  bottom: 3,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: SizedBox(
                                  height: getSize(88),
                                  width: getSize(88),
                                  child: CircularProgressIndicator(
                                    value: 0.5,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  width: getHorizontalSize(95),
                                  margin: getMargin(
                                    bottom: 66,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: getVerticalSize(34),
                                        width: getHorizontalSize(27),
                                        margin: getMargin(
                                          top: 5,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.bottomLeft,
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                "lbl_s".tr.toUpperCase(),
                                                style: CustomTextStyles
                                                    .labelSmallBlack90001,
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                padding: getPadding(
                                                  left: 5,
                                                  bottom: 8,
                                                ),
                                                child: Text(
                                                  "lbl_a".tr.toUpperCase(),
                                                  style: CustomTextStyles
                                                      .labelSmallBlack90001,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                padding: getPadding(
                                                  top: 4,
                                                  right: 4,
                                                ),
                                                child: Text(
                                                  "lbl_v".tr.toUpperCase(),
                                                  style: CustomTextStyles
                                                      .labelSmallBlack90001,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Text(
                                                "lbl_i".tr.toUpperCase(),
                                                style: CustomTextStyles
                                                    .labelSmallBlack90001,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  top: 1,
                                                  bottom: 11,
                                                ),
                                                child: Text(
                                                  "lbl_n".tr.toUpperCase(),
                                                  style: CustomTextStyles
                                                      .labelSmallBlack90001,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 2,
                                                  bottom: 11,
                                                ),
                                                child: Text(
                                                  "lbl_g".tr.toUpperCase(),
                                                  style: CustomTextStyles
                                                      .labelSmallBlack90001,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 11,
                                                  top: 1,
                                                  bottom: 10,
                                                ),
                                                child: Text(
                                                  "lbl_r".tr.toUpperCase(),
                                                  style: CustomTextStyles
                                                      .labelSmallBlack90001,
                                                ),
                                              ),
                                              Container(
                                                height: getSize(21),
                                                width: getSize(21),
                                                margin: getMargin(
                                                  left: 1,
                                                  top: 6,
                                                ),
                                                child: Stack(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Text(
                                                        "lbl_a"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: CustomTextStyles
                                                            .labelSmallBlack90001,
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Padding(
                                                        padding: getPadding(
                                                          right: 4,
                                                          bottom: 6,
                                                        ),
                                                        child: Text(
                                                          "lbl_t"
                                                              .tr
                                                              .toUpperCase(),
                                                          style: CustomTextStyles
                                                              .labelSmallBlack90001,
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Text(
                                                        "lbl_i"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: CustomTextStyles
                                                            .labelSmallBlack90001,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Text(
                                              "lbl_o".tr.toUpperCase(),
                                              style: CustomTextStyles
                                                  .labelSmallBlack90001,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: getVerticalSize(105),
                          width: getHorizontalSize(102),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgVectorOnprimary,
                                height: getVerticalSize(75),
                                width: getHorizontalSize(74),
                                alignment: Alignment.bottomCenter,
                                margin: getMargin(
                                  bottom: 3,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: getSize(88),
                                  width: getSize(88),
                                  padding: getPadding(
                                    left: 15,
                                    top: 21,
                                    right: 15,
                                    bottom: 21,
                                  ),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: fs.Svg(
                                        ImageConstant.imgGroup1481,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                          margin: getMargin(
                                            top: 6,
                                          ),
                                          decoration:
                                              AppDecoration.outlineBlack900011,
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "lbl_0".tr,
                                                  style: CustomTextStyles
                                                      .headlineMediumBluegray80001,
                                                ),
                                                TextSpan(
                                                  text: "lbl8".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallBluegray80001Bold,
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text(
                                          "lbl_need_to_control".tr,
                                          style: CustomTextStyles
                                              .labelSmallBlack90001_1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      height: getVerticalSize(33),
                                      width: getHorizontalSize(27),
                                      margin: getMargin(
                                        top: 7,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Text(
                                              "lbl_e".tr.toUpperCase(),
                                              style: CustomTextStyles
                                                  .labelSmallBlack90001,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 5,
                                                bottom: 7,
                                              ),
                                              child: Text(
                                                "lbl_x".tr.toUpperCase(),
                                                style: CustomTextStyles
                                                    .labelSmallBlack90001,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                              padding: getPadding(
                                                top: 5,
                                                right: 7,
                                              ),
                                              child: Text(
                                                "lbl_p".tr.toUpperCase(),
                                                style: CustomTextStyles
                                                    .labelSmallBlack90001,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Text(
                                              "lbl_e2".tr.toUpperCase(),
                                              style: CustomTextStyles
                                                  .labelSmallBlack90001,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                        bottom: 23,
                                      ),
                                      child: Text(
                                        "lbl_n".tr.toUpperCase(),
                                        style: CustomTextStyles
                                            .labelSmallBlack90001,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 1,
                                        bottom: 25,
                                      ),
                                      child: Text(
                                        "lbl_s2".tr.toUpperCase(),
                                        style: CustomTextStyles
                                            .labelSmallBlack90001,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 2,
                                        bottom: 26,
                                      ),
                                      child: Text(
                                        "lbl_e2".tr.toUpperCase(),
                                        style: CustomTextStyles
                                            .labelSmallBlack90001,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 3,
                                        bottom: 26,
                                      ),
                                      child: Text(
                                        "lbl_s2".tr.toUpperCase(),
                                        style: CustomTextStyles
                                            .labelSmallBlack90001,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 8,
                                        top: 4,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_r".tr.toUpperCase(),
                                            style: CustomTextStyles
                                                .labelSmallBlack90001,
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 7,
                                            ),
                                            child: Text(
                                              "lbl_a".tr.toUpperCase(),
                                              style: CustomTextStyles
                                                  .labelSmallBlack90001,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                              padding: getPadding(
                                                right: 10,
                                              ),
                                              child: Text(
                                                "lbl_t".tr.toUpperCase(),
                                                style: CustomTextStyles
                                                    .labelSmallBlack90001,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: SizedBox(
                                              height: getVerticalSize(17),
                                              width: getHorizontalSize(13),
                                              child: Stack(
                                                alignment:
                                                    Alignment.bottomRight,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      "lbl_i".tr.toUpperCase(),
                                                      style: CustomTextStyles
                                                          .labelSmallBlack90001,
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: Text(
                                                      "lbl_o".tr.toUpperCase(),
                                                      style: CustomTextStyles
                                                          .labelSmallBlack90001,
                                                    ),
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
                            ],
                          ),
                        ),
                        SizedBox(
                          height: getVerticalSize(105),
                          width: getHorizontalSize(107),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgVectorOnprimary,
                                height: getVerticalSize(75),
                                width: getHorizontalSize(74),
                                alignment: Alignment.bottomCenter,
                                margin: getMargin(
                                  bottom: 3,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  margin: getMargin(
                                    left: 9,
                                    right: 9,
                                  ),
                                  padding: getPadding(
                                    left: 24,
                                    top: 20,
                                    right: 24,
                                    bottom: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: fs.Svg(
                                        ImageConstant.imgGroup1481,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        margin: getMargin(
                                          top: 7,
                                        ),
                                        decoration:
                                            AppDecoration.outlineBlack900011,
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "lbl_0".tr,
                                                style: CustomTextStyles
                                                    .headlineMediumBluegray80001,
                                              ),
                                              TextSpan(
                                                text: "lbl8".tr,
                                                style: CustomTextStyles
                                                    .titleSmallBluegray80001Bold,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Text(
                                        "lbl_very_good".tr,
                                        style: CustomTextStyles
                                            .labelSmallBlack90001_1,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  width: getHorizontalSize(107),
                                  margin: getMargin(
                                    bottom: 59,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: getVerticalSize(31),
                                        width: getHorizontalSize(21),
                                        margin: getMargin(
                                          top: 12,
                                          bottom: 2,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.bottomLeft,
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                "lbl_d".tr.toUpperCase(),
                                                style: CustomTextStyles
                                                    .labelSmallBlack90001,
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                padding: getPadding(
                                                  left: 4,
                                                  bottom: 6,
                                                ),
                                                child: Text(
                                                  "lbl_e2".tr.toUpperCase(),
                                                  style: CustomTextStyles
                                                      .labelSmallBlack90001,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                padding: getPadding(
                                                  top: 4,
                                                  right: 4,
                                                ),
                                                child: Text(
                                                  "lbl_b".tr.toUpperCase(),
                                                  style: CustomTextStyles
                                                      .labelSmallBlack90001,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Text(
                                                "lbl_t".tr.toUpperCase(),
                                                style: CustomTextStyles
                                                    .labelSmallBlack90001,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(17),
                                        width: getHorizontalSize(12),
                                        margin: getMargin(
                                          top: 3,
                                          bottom: 24,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                "lbl_s".tr.toUpperCase(),
                                                style: CustomTextStyles
                                                    .labelSmallBlack90001,
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Text(
                                                "lbl_e2".tr.toUpperCase(),
                                                style: CustomTextStyles
                                                    .labelSmallBlack90001,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(16),
                                        width: getHorizontalSize(12),
                                        margin: getMargin(
                                          bottom: 29,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                "lbl_r2".tr.toUpperCase(),
                                                style: CustomTextStyles
                                                    .labelSmallBlack90001,
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Text(
                                                "lbl_v".tr.toUpperCase(),
                                                style: CustomTextStyles
                                                    .labelSmallBlack90001,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          bottom: 29,
                                        ),
                                        child: Text(
                                          "lbl_i".tr.toUpperCase(),
                                          style: CustomTextStyles
                                              .labelSmallBlack90001,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          bottom: 29,
                                        ),
                                        child: Text(
                                          "lbl_c".tr.toUpperCase(),
                                          style: CustomTextStyles
                                              .labelSmallBlack90001,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          bottom: 29,
                                        ),
                                        child: Text(
                                          "lbl_i".tr.toUpperCase(),
                                          style: CustomTextStyles
                                              .labelSmallBlack90001,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 2,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "lbl_n".tr.toUpperCase(),
                                                style: CustomTextStyles
                                                    .labelSmallBlack90001,
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: getPadding(
                                                  left: 6,
                                                ),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: getPadding(
                                                        bottom: 5,
                                                      ),
                                                      child: Text(
                                                        "lbl_g"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: CustomTextStyles
                                                            .labelSmallBlack90001,
                                                      ),
                                                    ),
                                                    Container(
                                                      height:
                                                          getVerticalSize(14),
                                                      width:
                                                          getHorizontalSize(15),
                                                      margin: getMargin(
                                                        left: 2,
                                                      ),
                                                      child: Stack(
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        children: [
                                                          Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Text(
                                                              "lbl_r"
                                                                  .tr
                                                                  .toUpperCase(),
                                                              style: CustomTextStyles
                                                                  .labelSmallBlack90001,
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            child: Text(
                                                              "lbl_a"
                                                                  .tr
                                                                  .toUpperCase(),
                                                              style: CustomTextStyles
                                                                  .labelSmallBlack90001,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                right: 6,
                                              ),
                                              child: Text(
                                                "lbl_t".tr.toUpperCase(),
                                                style: CustomTextStyles
                                                    .labelSmallBlack90001,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                right: 4,
                                              ),
                                              child: Text(
                                                "lbl_i".tr.toUpperCase(),
                                                style: CustomTextStyles
                                                    .labelSmallBlack90001,
                                              ),
                                            ),
                                            Text(
                                              "lbl_o".tr.toUpperCase(),
                                              style: CustomTextStyles
                                                  .labelSmallBlack90001,
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
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(111),
                    width: getHorizontalSize(197),
                    margin: getMargin(
                      top: 10,
                    ),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: getSize(70),
                                width: getSize(70),
                                padding: getPadding(
                                  all: 10,
                                ),
                                decoration:
                                    AppDecoration.outlineBlack900012.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5,
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgHealthinsurance,
                                  height: getSize(50),
                                  width: getSize(50),
                                  alignment: Alignment.center,
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(72),
                                margin: getMargin(
                                  top: 8,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "msg_health_insurance2".tr,
                                        style: CustomTextStyles
                                            .bodySmallBlack90001_1,
                                      ),
                                      TextSpan(
                                        text: "lbl_none".tr,
                                        style:
                                            CustomTextStyles.titleMediumBold18,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: getSize(70),
                                width: getSize(70),
                                padding: getPadding(
                                  all: 10,
                                ),
                                decoration:
                                    AppDecoration.outlineBlack900012.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5,
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgLife1,
                                  height: getSize(50),
                                  width: getSize(50),
                                  alignment: Alignment.center,
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(59),
                                margin: getMargin(
                                  top: 7,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_life_insurance".tr,
                                        style: CustomTextStyles
                                            .bodySmallBlack90001_1,
                                      ),
                                      TextSpan(
                                        text: "lbl_none".tr,
                                        style:
                                            CustomTextStyles.titleMediumBold18,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            margin: getMargin(
                              left: 20,
                              bottom: 12,
                            ),
                            padding: getPadding(
                              left: 20,
                              top: 10,
                              right: 20,
                              bottom: 10,
                            ),
                            decoration:
                                AppDecoration.outlineBlack900016.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder20,
                            ),
                            child: Text(
                              "msg_complete_profile2".tr,
                              style: CustomTextStyles.titleSmallOnPrimary_1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: CustomBottomAppBar(
              onChanged: (BottomBarEnum type) {
                Navigator.pushNamed(
                    navigatorKey.currentContext!, getCurrentRoute(type));
              },
            ),
          ),
        );
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Financialplan:
        return "/";
      case BottomBarEnum.Transaction:
        return AppRoutes.withSurrenderPage;
      case BottomBarEnum.Advisory:
        return "/";
      case BottomBarEnum.Monitoring:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.withSurrenderPage:
        return WithSurrenderPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
