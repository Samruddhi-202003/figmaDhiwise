import 'bloc/loan_one_bloc.dart';
import 'models/loan_one_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/custom_elevated_button.dart';
import 'package:samruddhi_s_application1/widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class LoanOnePage extends StatefulWidget {
  const LoanOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  LoanOnePageState createState() => LoanOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LoanOneBloc>(
      create: (context) => LoanOneBloc(LoanOneState(
        loanOneModelObj: LoanOneModel(),
      ))
        ..add(LoanOneInitialEvent()),
      child: LoanOnePage(),
    );
  }
}

class LoanOnePageState extends State<LoanOnePage>
    with AutomaticKeepAliveClientMixin<LoanOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<LoanOneBloc, LoanOneState>(
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
                            width: getHorizontalSize(330),
                            margin: getMargin(
                              top: 15,
                            ),
                            padding: getPadding(
                              left: 5,
                              right: 5,
                            ),
                            decoration: AppDecoration.outlineGray3001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: getVerticalSize(72),
                                  width: getHorizontalSize(310),
                                  margin: getMargin(
                                    top: 5,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.topRight,
                                    children: [
                                      BlocSelector<LoanOneBloc, LoanOneState,
                                          TextEditingController?>(
                                        selector: (state) =>
                                            state.carloanoneController,
                                        builder:
                                            (context, carloanoneController) {
                                          return CustomFloatingTextField(
                                            width: getHorizontalSize(300),
                                            controller: carloanoneController,
                                            labelText: "lbl_type_of_loan".tr,
                                            labelStyle:
                                                theme.textTheme.titleMedium!,
                                            hintText: "lbl_type_of_loan".tr,
                                            hintStyle:
                                                theme.textTheme.titleMedium!,
                                            alignment: Alignment.bottomLeft,
                                          );
                                        },
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgClose1,
                                        height: getSize(20),
                                        width: getSize(20),
                                        alignment: Alignment.topRight,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(52),
                                  width: getHorizontalSize(300),
                                  margin: getMargin(
                                    top: 15,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          margin: getMargin(
                                            top: 8,
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
                                                  "lbl_10_00_000".tr,
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
                                            top: 7,
                                          ),
                                          child: SizedBox(
                                            width: getHorizontalSize(94),
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
                                            "msg_total_loan_taken".tr,
                                            style: theme.textTheme.labelMedium,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                BlocSelector<LoanOneBloc, LoanOneState,
                                    TextEditingController?>(
                                  selector: (state) => state.dateController,
                                  builder: (context, dateController) {
                                    return CustomFloatingTextField(
                                      margin: getMargin(
                                        left: 10,
                                        top: 16,
                                        right: 10,
                                      ),
                                      controller: dateController,
                                      labelText: "lbl_emi_start_date".tr,
                                      labelStyle:
                                          CustomTextStyles.titleMediumGray300,
                                      hintText: "lbl_emi_start_date".tr,
                                      hintStyle:
                                          CustomTextStyles.titleMediumGray300,
                                    );
                                  },
                                ),
                                BlocSelector<LoanOneBloc, LoanOneState,
                                    TextEditingController?>(
                                  selector: (state) => state.dateController1,
                                  builder: (context, dateController1) {
                                    return CustomFloatingTextField(
                                      margin: getMargin(
                                        left: 10,
                                        top: 15,
                                        right: 10,
                                      ),
                                      controller: dateController1,
                                      labelText: "lbl_emi_end_date".tr,
                                      labelStyle:
                                          CustomTextStyles.titleMediumGray300,
                                      hintText: "lbl_emi_end_date".tr,
                                      hintStyle:
                                          CustomTextStyles.titleMediumGray300,
                                      textInputAction: TextInputAction.done,
                                    );
                                  },
                                ),
                                Container(
                                  height: getVerticalSize(52),
                                  width: getHorizontalSize(300),
                                  margin: getMargin(
                                    top: 15,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          margin: getMargin(
                                            top: 8,
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
                                                  "lbl_4_000".tr,
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
                                            top: 7,
                                          ),
                                          child: SizedBox(
                                            width: getHorizontalSize(130),
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
                                            "msg_easy_monthly_installment".tr,
                                            style: theme.textTheme.labelMedium,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(53),
                                  width: getHorizontalSize(300),
                                  margin: getMargin(
                                    top: 15,
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
                                                  "lbl_40_000".tr,
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
                                            width: getHorizontalSize(92),
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
                                            "msg_current_value_of".tr,
                                            style: theme.textTheme.labelMedium,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                CustomElevatedButton(
                                  height: getVerticalSize(32),
                                  width: getHorizontalSize(145),
                                  text: "lbl_save".tr,
                                  margin: getMargin(
                                    top: 16,
                                  ),
                                  buttonStyle: CustomButtonStyles.none,
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
