import 'bloc/advisory_one_bloc.dart';
import 'models/advisory_one_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/with_surrender_page/with_surrender_page.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:samruddhi_s_application1/widgets/custom_bottom_app_bar.dart';
import 'package:samruddhi_s_application1/widgets/custom_switch.dart';

class AdvisoryOneScreen extends StatelessWidget {
  AdvisoryOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<AdvisoryOneBloc>(
      create: (context) => AdvisoryOneBloc(AdvisoryOneState(
        advisoryOneModelObj: AdvisoryOneModel(),
      ))
        ..add(AdvisoryOneInitialEvent()),
      child: AdvisoryOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AdvisoryOneBloc, AdvisoryOneState>(
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
                text: "lbl_advisory".tr,
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
                      BlocSelector<AdvisoryOneBloc, AdvisoryOneState, bool?>(
                        selector: (state) => state.isSelectedSwitch,
                        builder: (context, isSelectedSwitch) {
                          return CustomSwitch(
                            alignment: Alignment.center,
                            value: isSelectedSwitch,
                            onChange: (value) {
                              context
                                  .read<AdvisoryOneBloc>()
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
            body: Container(
              width: double.maxFinite,
              padding: getPadding(
                left: 14,
                top: 4,
                right: 14,
                bottom: 4,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: getMargin(
                      left: 104,
                      top: 16,
                      right: 104,
                    ),
                    padding: getPadding(
                      all: 12,
                    ),
                    decoration: AppDecoration.fillGreen700.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder62,
                    ),
                    child: Container(
                      height: getSize(99),
                      width: getSize(99),
                      padding: getPadding(
                        left: 19,
                        top: 28,
                        right: 19,
                        bottom: 28,
                      ),
                      decoration: AppDecoration.outlineOnPrimary3.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder49,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgHandshake1,
                        height: getVerticalSize(42),
                        width: getHorizontalSize(58),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 13,
                    ),
                    child: Text(
                      "lbl_thank_you".tr,
                      style: CustomTextStyles.headlineLargeBluegray80001,
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 11,
                      top: 15,
                      right: 11,
                    ),
                    padding: getPadding(
                      left: 21,
                      top: 8,
                      right: 21,
                      bottom: 8,
                    ),
                    decoration: AppDecoration.fillGreen.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Container(
                      width: getHorizontalSize(265),
                      margin: getMargin(
                        top: 3,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_thank_you_for_always2".tr,
                              style: CustomTextStyles.bodyMediumInterOnPrimary,
                            ),
                            TextSpan(
                              text: "lbl_stepping_in_to".tr,
                              style: CustomTextStyles.titleSmallInterOnPrimary,
                            ),
                            TextSpan(
                              text: "msg_and_taking_out_your".tr,
                              style: CustomTextStyles.bodyMediumInterOnPrimary,
                            ),
                            TextSpan(
                              text: "lbl_precious_time".tr,
                              style: CustomTextStyles.titleSmallInterOnPrimary,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 20,
                    ),
                    padding: getPadding(
                      left: 21,
                      top: 2,
                      right: 21,
                      bottom: 2,
                    ),
                    decoration: AppDecoration.fillRedA70001.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL20,
                    ),
                    child: Text(
                      "lbl_time_remaining2".tr.toUpperCase(),
                      style: CustomTextStyles.labelMediumOnPrimary,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 76,
                      top: 1,
                      right: 76,
                    ),
                    child: DottedBorder(
                      color: appTheme.redA70001,
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(1),
                        top: getVerticalSize(1),
                        right: getHorizontalSize(1),
                        bottom: getVerticalSize(1),
                      ),
                      strokeWidth: getHorizontalSize(1),
                      radius: Radius.circular(30),
                      borderType: BorderType.RRect,
                      dashPattern: [
                        3,
                        3,
                      ],
                      child: Container(
                        padding: getPadding(
                          left: 38,
                          top: 2,
                          right: 38,
                          bottom: 2,
                        ),
                        decoration: AppDecoration.outlineRedA700011.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder30,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgTime17,
                              height: getVerticalSize(30),
                              width: getHorizontalSize(102),
                              margin: getMargin(
                                top: 6,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 1,
                                right: 6,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "lbl_months".tr.toUpperCase(),
                                    style: CustomTextStyles
                                        .labelMediumBluegray80001_1,
                                  ),
                                  Text(
                                    "lbl_days".tr.toUpperCase(),
                                    style: CustomTextStyles
                                        .labelMediumBluegray80001_1,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgPitchmeetingrafiki1,
                    height: getVerticalSize(160),
                    width: getHorizontalSize(233),
                    margin: getMargin(
                      top: 15,
                    ),
                  ),
                  Container(
                    height: getVerticalSize(94),
                    width: getHorizontalSize(330),
                    margin: getMargin(
                      top: 15,
                    ),
                    decoration: AppDecoration.outlineBlack9000114,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: getVerticalSize(155),
                            width: getHorizontalSize(330),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(5),
                              ),
                              border: Border.all(
                                color: theme.colorScheme.primary,
                                width: getHorizontalSize(1),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            width: getHorizontalSize(305),
                            child: Text(
                              "msg_as_indians_our".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .titleSmallBluegray80001Medium
                                  .copyWith(
                                height: 1.29,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            padding: getPadding(
                              left: 10,
                              top: 1,
                              right: 10,
                              bottom: 1,
                            ),
                            decoration: AppDecoration.fillPink.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL5,
                            ),
                            child: Text(
                              "lbl_description".tr,
                              style: CustomTextStyles.titleMediumOnPrimary,
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
