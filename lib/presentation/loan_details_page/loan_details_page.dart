import 'bloc/loan_details_bloc.dart';
import 'models/loan_details_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class LoanDetailsPage extends StatefulWidget {
  const LoanDetailsPage({Key? key})
      : super(
          key: key,
        );

  @override
  LoanDetailsPageState createState() => LoanDetailsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LoanDetailsBloc>(
      create: (context) => LoanDetailsBloc(LoanDetailsState(
        loanDetailsModelObj: LoanDetailsModel(),
      ))
        ..add(LoanDetailsInitialEvent()),
      child: LoanDetailsPage(),
    );
  }
}

class LoanDetailsPageState extends State<LoanDetailsPage>
    with AutomaticKeepAliveClientMixin<LoanDetailsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<LoanDetailsBloc, LoanDetailsState>(
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
                                        imagePath:
                                            ImageConstant.imgAccount114x14,
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
                                          "lbl_car_loan".tr,
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
                                    right: 91,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                              "lbl_type_of_loan".tr,
                                              style:
                                                  theme.textTheme.labelMedium,
                                            ),
                                            Text(
                                              "lbl_car".tr,
                                              style:
                                                  theme.textTheme.titleMedium,
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
                                          Text(
                                            "msg_total_loan_taken".tr,
                                            style: theme.textTheme.labelMedium,
                                          ),
                                          Text(
                                            "lbl_2_00_000".tr,
                                            style: theme.textTheme.titleMedium,
                                          ),
                                        ],
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
                                          Text(
                                            "lbl_emi_start_date".tr,
                                            style: theme.textTheme.labelMedium,
                                          ),
                                          Text(
                                            "lbl_12_02_2015".tr,
                                            style: theme.textTheme.titleMedium,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 77,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "lbl_emi_end_date".tr,
                                              style:
                                                  theme.textTheme.labelMedium,
                                            ),
                                            Text(
                                              "lbl_12_02_2024".tr,
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
                                    bottom: 13,
                                  ),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "msg_easy_monthly_installment2".tr,
                                            style: theme.textTheme.labelMedium,
                                          ),
                                          Text(
                                            "lbl_4_000".tr,
                                            style: theme.textTheme.titleMedium,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 15,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "msg_current_value_of".tr,
                                              style:
                                                  theme.textTheme.labelMedium,
                                            ),
                                            Text(
                                              "lbl_40_000".tr,
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
                                        imagePath:
                                            ImageConstant.imgAccount114x14,
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
                                          "lbl_home_loan".tr,
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
                                    right: 91,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                              "lbl_type_of_loan".tr,
                                              style:
                                                  theme.textTheme.labelMedium,
                                            ),
                                            Text(
                                              "lbl_home".tr,
                                              style:
                                                  theme.textTheme.titleMedium,
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
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "msg_total_loan_taken".tr,
                                              style:
                                                  theme.textTheme.labelMedium,
                                            ),
                                          ),
                                          Text(
                                            "lbl_20_00_000".tr,
                                            style: theme.textTheme.titleMedium,
                                          ),
                                        ],
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
                                          Text(
                                            "lbl_emi_start_date".tr,
                                            style: theme.textTheme.labelMedium,
                                          ),
                                          Text(
                                            "lbl_12_02_2015".tr,
                                            style: theme.textTheme.titleMedium,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 77,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "lbl_emi_end_date".tr,
                                              style:
                                                  theme.textTheme.labelMedium,
                                            ),
                                            Text(
                                              "lbl_12_02_2034".tr,
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
                                    bottom: 13,
                                  ),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "msg_easy_monthly_installment2".tr,
                                            style: theme.textTheme.labelMedium,
                                          ),
                                          Text(
                                            "lbl_8_000".tr,
                                            style: theme.textTheme.titleMedium,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 15,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                "msg_current_value_of".tr,
                                                style:
                                                    theme.textTheme.labelMedium,
                                              ),
                                            ),
                                            Text(
                                              "lbl_30_00_000".tr,
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
                          Padding(
                            padding: getPadding(
                              top: 15,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: CustomElevatedButton(
                                    text: "lbl_next".tr,
                                    margin: getMargin(
                                      right: 5,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: CustomElevatedButton(
                                    text: "lbl_add_more".tr,
                                    margin: getMargin(
                                      left: 5,
                                    ),
                                    buttonStyle:
                                        CustomButtonStyles.fillBlueGray,
                                    buttonTextStyle:
                                        CustomTextStyles.titleSmallBlack90001,
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
