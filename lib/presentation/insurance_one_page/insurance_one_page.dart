import 'bloc/insurance_one_bloc.dart';
import 'models/insurance_one_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/custom_elevated_button.dart';
import 'package:samruddhi_s_application1/widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class InsuranceOnePage extends StatefulWidget {
  const InsuranceOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  InsuranceOnePageState createState() => InsuranceOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<InsuranceOneBloc>(
      create: (context) => InsuranceOneBloc(InsuranceOneState(
        insuranceOneModelObj: InsuranceOneModel(),
      ))
        ..add(InsuranceOneInitialEvent()),
      child: InsuranceOnePage(),
    );
  }
}

class InsuranceOnePageState extends State<InsuranceOnePage>
    with AutomaticKeepAliveClientMixin<InsuranceOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<InsuranceOneBloc, InsuranceOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
            resizeToAvoidBottomInset: false,
            body: SizedBox(
              width: mediaQueryData.size.width,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 15,
                        top: 15,
                        right: 15,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: AppDecoration.outlineOrange500.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: getPadding(
                                    left: 10,
                                    top: 2,
                                    right: 10,
                                    bottom: 2,
                                  ),
                                  decoration: AppDecoration.fillOrange,
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgAccount11,
                                        height: getSize(14),
                                        width: getSize(14),
                                        margin: getMargin(
                                          top: 5,
                                          bottom: 5,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 5,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          "msg_health_insurance".tr,
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
                                    left: 15,
                                    top: 6,
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          bottom: 1,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "msg_type_of_insurance".tr,
                                              style:
                                                  theme.textTheme.labelMedium,
                                            ),
                                            Text(
                                              "msg_health_insurance".tr,
                                              style:
                                                  theme.textTheme.titleMedium,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 31,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "lbl_sum_insured".tr,
                                              style:
                                                  theme.textTheme.labelMedium,
                                            ),
                                            Text(
                                              "lbl_2_00_000".tr,
                                              style:
                                                  theme.textTheme.titleMedium,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 15,
                                    top: 6,
                                  ),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "lbl_premium_type".tr,
                                              style:
                                                  theme.textTheme.labelMedium,
                                            ),
                                          ),
                                          Text(
                                            "lbl_monthly".tr,
                                            style: theme.textTheme.titleMedium,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 87,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "lbl_premium_amount".tr,
                                              style:
                                                  theme.textTheme.labelMedium,
                                            ),
                                            Text(
                                              "lbl_400".tr,
                                              style:
                                                  theme.textTheme.titleMedium,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 15,
                                    top: 7,
                                  ),
                                  child: Text(
                                    "lbl_due_date".tr,
                                    style: theme.textTheme.labelMedium,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 15,
                                    bottom: 14,
                                  ),
                                  child: Text(
                                    "lbl_20_02_2023".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(330),
                            margin: getMargin(
                              top: 15,
                            ),
                            padding: getPadding(
                              all: 5,
                            ),
                            decoration: AppDecoration.outlineGray300.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgClose1,
                                  height: getSize(20),
                                  width: getSize(20),
                                  alignment: Alignment.centerRight,
                                ),
                                BlocSelector<InsuranceOneBloc,
                                    InsuranceOneState, TextEditingController?>(
                                  selector: (state) =>
                                      state.healthinsuranceController,
                                  builder:
                                      (context, healthinsuranceController) {
                                    return CustomFloatingTextField(
                                      margin: getMargin(
                                        left: 10,
                                        top: 6,
                                        right: 10,
                                      ),
                                      controller: healthinsuranceController,
                                      labelText: "msg_type_of_insurance".tr,
                                      labelStyle: theme.textTheme.titleMedium!,
                                      hintText: "msg_type_of_insurance".tr,
                                      hintStyle: theme.textTheme.titleMedium!,
                                    );
                                  },
                                ),
                                Container(
                                  height: getVerticalSize(53),
                                  width: getHorizontalSize(300),
                                  margin: getMargin(
                                    top: 14,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          margin: getMargin(
                                            top: 9,
                                          ),
                                          padding: getPadding(
                                            left: 15,
                                            top: 7,
                                            right: 15,
                                            bottom: 7,
                                          ),
                                          decoration: AppDecoration
                                              .outlineGray3002
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder5,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  top: 3,
                                                ),
                                                child: Text(
                                                  "lbl_2_00_000".tr,
                                                  style: CustomTextStyles
                                                      .titleMediumGray300,
                                                ),
                                              ),
                                              Container(
                                                height: getVerticalSize(20),
                                                width: getHorizontalSize(30),
                                                margin: getMargin(
                                                  top: 3,
                                                  bottom: 4,
                                                ),
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                        height:
                                                            getVerticalSize(20),
                                                        width:
                                                            getHorizontalSize(
                                                                30),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: appTheme
                                                              .orange500,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            getHorizontalSize(
                                                                3),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        "lbl_inr".tr,
                                                        style: CustomTextStyles
                                                            .labelLargeMedium,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                          padding: getPadding(
                                            top: 8,
                                          ),
                                          child: SizedBox(
                                            width: getHorizontalSize(74),
                                            child: Divider(
                                              indent: getHorizontalSize(10),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 15,
                                          ),
                                          child: Text(
                                            "lbl_sum_insured".tr,
                                            style: CustomTextStyles
                                                .labelMediumGray600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                BlocSelector<InsuranceOneBloc,
                                    InsuranceOneState, TextEditingController?>(
                                  selector: (state) =>
                                      state.monthlyoneController,
                                  builder: (context, monthlyoneController) {
                                    return CustomFloatingTextField(
                                      margin: getMargin(
                                        left: 10,
                                        top: 14,
                                        right: 10,
                                      ),
                                      controller: monthlyoneController,
                                      labelText: "lbl_premium_type".tr,
                                      labelStyle:
                                          CustomTextStyles.titleMediumGray300,
                                      hintText: "lbl_premium_type".tr,
                                      hintStyle:
                                          CustomTextStyles.titleMediumGray300,
                                    );
                                  },
                                ),
                                Container(
                                  height: getVerticalSize(53),
                                  width: getHorizontalSize(300),
                                  margin: getMargin(
                                    top: 14,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          margin: getMargin(
                                            top: 9,
                                          ),
                                          padding: getPadding(
                                            left: 15,
                                            top: 8,
                                            right: 15,
                                            bottom: 8,
                                          ),
                                          decoration: AppDecoration
                                              .outlineGray3002
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder5,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  top: 1,
                                                ),
                                                child: Text(
                                                  "lbl_400".tr,
                                                  style: CustomTextStyles
                                                      .titleMediumGray300,
                                                ),
                                              ),
                                              Container(
                                                height: getVerticalSize(20),
                                                width: getHorizontalSize(30),
                                                margin: getMargin(
                                                  top: 3,
                                                  bottom: 3,
                                                ),
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                        height:
                                                            getVerticalSize(20),
                                                        width:
                                                            getHorizontalSize(
                                                                30),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: appTheme
                                                              .orange500,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            getHorizontalSize(
                                                                3),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        "lbl_inr".tr,
                                                        style: CustomTextStyles
                                                            .labelLargeMedium,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                          padding: getPadding(
                                            top: 8,
                                          ),
                                          child: SizedBox(
                                            width: getHorizontalSize(97),
                                            child: Divider(
                                              indent: getHorizontalSize(10),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 15,
                                          ),
                                          child: Text(
                                            "lbl_premium_amount".tr,
                                            style: CustomTextStyles
                                                .labelMediumGray600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                BlocSelector<InsuranceOneBloc,
                                    InsuranceOneState, TextEditingController?>(
                                  selector: (state) => state.dateController,
                                  builder: (context, dateController) {
                                    return CustomFloatingTextField(
                                      margin: getMargin(
                                        left: 10,
                                        top: 14,
                                        right: 10,
                                        bottom: 8,
                                      ),
                                      controller: dateController,
                                      labelText: "lbl_expire_date".tr,
                                      labelStyle: CustomTextStyles
                                          .titleMediumBluegray100,
                                      hintText: "lbl_expire_date".tr,
                                      hintStyle: CustomTextStyles
                                          .titleMediumBluegray100,
                                      textInputAction: TextInputAction.done,
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          CustomElevatedButton(
                            width: getHorizontalSize(160),
                            text: "lbl_save".tr.toUpperCase(),
                            margin: getMargin(
                              top: 15,
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
        );
      },
    );
  }
}
