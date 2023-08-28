import 'bloc/subscription_bloc.dart';
import 'models/subscription_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/custom_app_bar.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SubscriptionBloc>(
      create: (context) => SubscriptionBloc(SubscriptionState(
        subscriptionModelObj: SubscriptionModel(),
      ))
        ..add(SubscriptionInitialEvent()),
      child: SubscriptionScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SubscriptionBloc, SubscriptionState>(
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
                text: "lbl_my_subscription".tr,
              ),
              actions: [
                Container(
                  margin: getMargin(
                    left: 15,
                    top: 13,
                    right: 15,
                    bottom: 13,
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
                        text: "lbl5".tr.toUpperCase(),
                        margin: getMargin(
                          left: 2,
                          top: 1,
                          right: 2,
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
                all: 15,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: getPadding(
                      left: 110,
                      top: 6,
                      right: 110,
                      bottom: 6,
                    ),
                    decoration: AppDecoration.outlineOrange500.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEdrg1120x108,
                          height: getVerticalSize(120),
                          width: getHorizontalSize(108),
                          margin: getMargin(
                            top: 4,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 3,
                          ),
                          child: Text(
                            "lbl_congrats".tr,
                            style: CustomTextStyles.headlineSmallPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 15,
                    ),
                    padding: getPadding(
                      left: 57,
                      top: 18,
                      right: 57,
                      bottom: 18,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "msg_you_can_use_the2".tr,
                                style: CustomTextStyles.bodyMedium14_1,
                              ),
                              TextSpan(
                                text: " ",
                              ),
                              TextSpan(
                                text: "lbl_free".tr,
                                style: CustomTextStyles.headlineSmallGreen700,
                              ),
                              TextSpan(
                                text: "lbl_till".tr,
                                style: CustomTextStyles.bodyMedium14_1,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 7,
                          ),
                          child: Text(
                            "lbl_11_01_2026".tr,
                            style: CustomTextStyles.titleLargeGreen700Bold,
                          ),
                        ),
                        SizedBox(
                          width: getHorizontalSize(110),
                          child: Divider(
                            color: appTheme.green70001,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(284),
                    margin: getMargin(
                      left: 22,
                      top: 32,
                      right: 22,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_after_that_if_you2".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "lbl_net_worth".tr,
                            style: CustomTextStyles.titleMediumPrimary,
                          ),
                          TextSpan(
                            text: "lbl34".tr,
                            style: CustomTextStyles.titleMediumMedium_1,
                          ),
                          TextSpan(
                            text: "msg_financial_position".tr,
                            style: CustomTextStyles.titleMediumPrimary,
                          ),
                          TextSpan(
                            text: "lbl34".tr,
                            style: CustomTextStyles.titleMediumMedium_1,
                          ),
                          TextSpan(
                            text: "lbl_happiness".tr,
                            style: CustomTextStyles.titleMediumPrimary,
                          ),
                          TextSpan(
                            text: "lbl35".tr,
                            style: CustomTextStyles.titleMediumMedium_1,
                          ),
                          TextSpan(
                            text: "lbl_and".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "lbl_relaxation".tr,
                            style: CustomTextStyles.titleMediumPrimary,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "msg_then_you_can_start".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 50,
                      top: 31,
                      right: 50,
                      bottom: 5,
                    ),
                    padding: getPadding(
                      left: 39,
                      top: 12,
                      right: 39,
                      bottom: 12,
                    ),
                    decoration: AppDecoration.fillOrange.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_rs".tr,
                                style: CustomTextStyles.titleMediumOnPrimary_1,
                              ),
                              TextSpan(
                                text: "lbl_50_per_month".tr,
                                style: theme.textTheme.displaySmall,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 4,
                            bottom: 6,
                          ),
                          child: Text(
                            "msg_includes_taxes".tr,
                            style:
                                CustomTextStyles.titleMediumOnPrimaryMedium_1,
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
      },
    );
  }
}
