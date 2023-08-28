import 'bloc/car_bloc.dart';
import 'models/car_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:samruddhi_s_application1/widgets/custom_icon_button.dart';
import 'package:samruddhi_s_application1/widgets/custom_outlined_button.dart';
import 'package:samruddhi_s_application1/widgets/custom_switch.dart';

class CarScreen extends StatelessWidget {
  const CarScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CarBloc>(
      create: (context) => CarBloc(CarState(
        carModelObj: CarModel(),
      ))
        ..add(CarInitialEvent()),
      child: CarScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<CarBloc, CarState>(
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
                      BlocSelector<CarBloc, CarState, bool?>(
                        selector: (state) => state.isSelectedSwitch,
                        builder: (context, isSelectedSwitch) {
                          return CustomSwitch(
                            alignment: Alignment.center,
                            value: isSelectedSwitch,
                            onChange: (value) {
                              context
                                  .read<CarBloc>()
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
                child: Padding(
                  padding: getPadding(
                    left: 9,
                    right: 9,
                  ),
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
                                top: 2,
                                right: 10,
                                bottom: 2,
                              ),
                              decoration: AppDecoration.fillPink,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 1,
                                    ),
                                    child: Text(
                                      "lbl_by_car".tr,
                                      style: CustomTextStyles
                                          .titleSmallOnPrimary_1,
                                    ),
                                  ),
                                  Spacer(),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgEdit,
                                    height: getSize(12),
                                    width: getSize(12),
                                    margin: getMargin(
                                      top: 6,
                                      bottom: 6,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgDelete1,
                                    height: getSize(12),
                                    width: getSize(12),
                                    margin: getMargin(
                                      left: 14,
                                      top: 6,
                                      bottom: 6,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 10,
                                top: 5,
                                right: 10,
                                bottom: 9,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: getHorizontalSize(212),
                                    child: Text(
                                      "msg_it_is_a_long_established".tr,
                                      maxLines: 6,
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
                                      top: 21,
                                      right: 5,
                                      bottom: 21,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5,
                                    ),
                                    child: CustomImageView(
                                      imagePath:
                                          ImageConstant.img23591635autoshow08,
                                      height: getVerticalSize(36),
                                      width: getHorizontalSize(70),
                                      alignment: Alignment.center,
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
                        decoration: AppDecoration.gradientPinkToPink.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 8,
                                bottom: 7,
                              ),
                              child: Text(
                                "lbl_target_value".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
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
                                      text: "lbl_7lakh".tr,
                                      style: theme.textTheme.displaySmall,
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
                          top: 4,
                          right: 15,
                          bottom: 4,
                        ),
                        decoration: AppDecoration.gradientOrangeToPink.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 8,
                                bottom: 7,
                              ),
                              child: Text(
                                "msg_already_achieved2".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
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
                                      text: "lbl_0".tr,
                                      style: theme.textTheme.displaySmall,
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
                        height: getVerticalSize(50),
                        width: getHorizontalSize(330),
                        margin: getMargin(
                          top: 2,
                        ),
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                padding: getPadding(
                                  left: 15,
                                  top: 11,
                                  right: 15,
                                  bottom: 11,
                                ),
                                decoration:
                                    AppDecoration.gradientPinkToPink.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5,
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
                                  "lbl_12_jan_2028".tr,
                                  style: theme.textTheme.headlineLarge,
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
                          top: 6,
                          right: 15,
                          bottom: 6,
                        ),
                        decoration: AppDecoration.gradientPinkToPink.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 6,
                                bottom: 6,
                              ),
                              child: Text(
                                "msg_monthly_investment".tr,
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
                                      text: "lbl_50002".tr,
                                      style: theme.textTheme.displaySmall,
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
                          top: 13,
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
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: getVerticalSize(34),
                                      width: getHorizontalSize(145),
                                      child: Stack(
                                        alignment: Alignment.centerLeft,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                              padding: getPadding(
                                                left: 15,
                                                top: 2,
                                                right: 15,
                                                bottom: 2,
                                              ),
                                              decoration: AppDecoration.fillPink
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5,
                                              ),
                                              child: Text(
                                                "lbl_time_completed".tr,
                                                style:
                                                    theme.textTheme.labelLarge,
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
                                        child: CustomOutlinedButton(
                                          height: getVerticalSize(40),
                                          width: getHorizontalSize(116),
                                          text: "lbl_month".tr,
                                          rightIcon: Container(
                                            margin: getMargin(),
                                            child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgTime11,
                                              height: getVerticalSize(16),
                                              width: getHorizontalSize(56),
                                            ),
                                          ),
                                          buttonStyle:
                                              CustomButtonStyles.outlineOrange,
                                          buttonTextStyle:
                                              theme.textTheme.labelSmall!,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
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
                                                top: 2,
                                                right: 14,
                                                bottom: 2,
                                              ),
                                              decoration: AppDecoration.fillPink
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5,
                                              ),
                                              child: Text(
                                                "lbl_time_remaining".tr,
                                                style:
                                                    theme.textTheme.labelLarge,
                                              ),
                                            ),
                                          ),
                                          CustomIconButton(
                                            height: getSize(34),
                                            width: getSize(34),
                                            padding: getPadding(
                                              all: 8,
                                            ),
                                            alignment: Alignment.centerRight,
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
                                            top: 3,
                                            right: 30,
                                            bottom: 3,
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
                                                    ImageConstant.imgTime16,
                                                height: getVerticalSize(16),
                                                width: getHorizontalSize(56),
                                                alignment: Alignment.center,
                                                margin: getMargin(
                                                  top: 3,
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      "lbl_year".tr,
                                                      style: theme
                                                          .textTheme.labelSmall,
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 12,
                                                      ),
                                                      child: Text(
                                                        "lbl_month".tr,
                                                        style: theme.textTheme
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
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getVerticalSize(361),
                        width: getHorizontalSize(342),
                        margin: getMargin(
                          top: 55,
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
            ),
          ),
        );
      },
    );
  }
}
