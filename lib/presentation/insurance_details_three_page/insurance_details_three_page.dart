import 'bloc/insurance_details_three_bloc.dart';
import 'models/insurance_details_three_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class InsuranceDetailsThreePage extends StatefulWidget {
  const InsuranceDetailsThreePage({Key? key})
      : super(
          key: key,
        );

  @override
  InsuranceDetailsThreePageState createState() =>
      InsuranceDetailsThreePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<InsuranceDetailsThreeBloc>(
      create: (context) => InsuranceDetailsThreeBloc(InsuranceDetailsThreeState(
        insuranceDetailsThreeModelObj: InsuranceDetailsThreeModel(),
      ))
        ..add(InsuranceDetailsThreeInitialEvent()),
      child: InsuranceDetailsThreePage(),
    );
  }
}

class InsuranceDetailsThreePageState extends State<InsuranceDetailsThreePage>
    with AutomaticKeepAliveClientMixin<InsuranceDetailsThreePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<InsuranceDetailsThreeBloc, InsuranceDetailsThreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
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
                                    bottom: 14,
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
                              ],
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              top: 15,
                            ),
                            decoration: AppDecoration.outlineOrange500.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
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
                                          bottom: 2,
                                        ),
                                        child: Text(
                                          "lbl_life_insurance2".tr,
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
                                              "lbl_life_insurance2".tr,
                                              style:
                                                  theme.textTheme.titleMedium,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 52,
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
                                    top: 7,
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
                                              "lbl_maturity_amount".tr,
                                              style:
                                                  theme.textTheme.labelMedium,
                                            ),
                                            Text(
                                              "lbl_3_00_000".tr,
                                              style:
                                                  theme.textTheme.titleMedium,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 74,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "lbl_premium_type".tr,
                                              style:
                                                  theme.textTheme.labelMedium,
                                            ),
                                            Text(
                                              "lbl_yearly".tr,
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
                                  child: Text(
                                    "lbl_premium_amount".tr,
                                    style: theme.textTheme.labelMedium,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 15,
                                    bottom: 2,
                                  ),
                                  child: Text(
                                    "lbl_7_500".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 15,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: CustomElevatedButton(
                                    text: "lbl_next".tr.toUpperCase(),
                                    margin: getMargin(
                                      right: 5,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: CustomElevatedButton(
                                    text: "lbl_add_more".tr.toUpperCase(),
                                    margin: getMargin(
                                      left: 5,
                                    ),
                                    buttonStyle: CustomButtonStyles.fillGray,
                                    buttonTextStyle: CustomTextStyles
                                        .titleSmallBluegray80001_2,
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
            ),
          ),
        );
      },
    );
  }
}
