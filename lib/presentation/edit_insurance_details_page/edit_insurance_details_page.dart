import 'bloc/edit_insurance_details_bloc.dart';
import 'models/edit_insurance_details_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class EditInsuranceDetailsPage extends StatefulWidget {
  const EditInsuranceDetailsPage({Key? key})
      : super(
          key: key,
        );

  @override
  EditInsuranceDetailsPageState createState() =>
      EditInsuranceDetailsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<EditInsuranceDetailsBloc>(
      create: (context) => EditInsuranceDetailsBloc(EditInsuranceDetailsState(
        editInsuranceDetailsModelObj: EditInsuranceDetailsModel(),
      ))
        ..add(EditInsuranceDetailsInitialEvent()),
      child: EditInsuranceDetailsPage(),
    );
  }
}

class EditInsuranceDetailsPageState extends State<EditInsuranceDetailsPage>
    with AutomaticKeepAliveClientMixin<EditInsuranceDetailsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<EditInsuranceDetailsBloc, EditInsuranceDetailsState>(
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
                                          "lbl_term_insurance".tr,
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
                                              "lbl_term_insurance".tr,
                                              style:
                                                  theme.textTheme.titleMedium,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 41,
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
                                              "lbl_20_00_000".tr,
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
                                          Text(
                                            "lbl_premium_type".tr,
                                            style: theme.textTheme.labelMedium,
                                          ),
                                          Text(
                                            "lbl_yearly".tr,
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
                                              "lbl_7_500".tr,
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
                            padding: getPadding(
                              left: 15,
                              right: 15,
                            ),
                            decoration: AppDecoration.outlineGray300.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                BlocSelector<
                                    EditInsuranceDetailsBloc,
                                    EditInsuranceDetailsState,
                                    TextEditingController?>(
                                  selector: (state) =>
                                      state.healthinsuranceController,
                                  builder:
                                      (context, healthinsuranceController) {
                                    return CustomFloatingTextField(
                                      margin: getMargin(
                                        top: 14,
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
                                                  style: theme
                                                      .textTheme.titleMedium,
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
                                BlocSelector<
                                    EditInsuranceDetailsBloc,
                                    EditInsuranceDetailsState,
                                    TextEditingController?>(
                                  selector: (state) =>
                                      state.monthlyoneController,
                                  builder: (context, monthlyoneController) {
                                    return CustomFloatingTextField(
                                      margin: getMargin(
                                        top: 14,
                                      ),
                                      controller: monthlyoneController,
                                      labelText: "lbl_premium_type".tr,
                                      labelStyle: theme.textTheme.titleMedium!,
                                      hintText: "lbl_premium_type".tr,
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
                                                  style: theme
                                                      .textTheme.titleMedium,
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
                                Container(
                                  height: getVerticalSize(52),
                                  width: getHorizontalSize(300),
                                  margin: getMargin(
                                    top: 14,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                          height: getVerticalSize(20),
                                          width: getHorizontalSize(30),
                                          margin: getMargin(
                                            right: 15,
                                            bottom: 11,
                                          ),
                                          decoration: BoxDecoration(
                                            color: appTheme.orange500,
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(3),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Padding(
                                          padding: getPadding(
                                            right: 20,
                                            bottom: 11,
                                          ),
                                          child: Text(
                                            "lbl_inr".tr,
                                            style: CustomTextStyles
                                                .labelLargeMedium,
                                          ),
                                        ),
                                      ),
                                      BlocSelector<
                                          EditInsuranceDetailsBloc,
                                          EditInsuranceDetailsState,
                                          TextEditingController?>(
                                        selector: (state) =>
                                            state.amountController,
                                        builder: (context, amountController) {
                                          return CustomFloatingTextField(
                                            width: getHorizontalSize(300),
                                            controller: amountController,
                                            labelText: "lbl_maturity_amount".tr,
                                            labelStyle:
                                                theme.textTheme.titleMedium!,
                                            hintText: "lbl_maturity_amount".tr,
                                            hintStyle:
                                                theme.textTheme.titleMedium!,
                                            alignment: Alignment.center,
                                            borderDecoration:
                                                FloatingTextFormFieldStyleHelper
                                                    .outlineGrayTL5,
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                BlocSelector<
                                    EditInsuranceDetailsBloc,
                                    EditInsuranceDetailsState,
                                    TextEditingController?>(
                                  selector: (state) => state.dateController,
                                  builder: (context, dateController) {
                                    return CustomFloatingTextField(
                                      margin: getMargin(
                                        top: 12,
                                      ),
                                      controller: dateController,
                                      labelText: "lbl_start_date".tr,
                                      labelStyle: theme.textTheme.titleMedium!,
                                      hintText: "lbl_start_date".tr,
                                      hintStyle: theme.textTheme.titleMedium!,
                                      contentPadding: getPadding(
                                        left: 15,
                                        top: 16,
                                        right: 15,
                                        bottom: 12,
                                      ),
                                    );
                                  },
                                ),
                                BlocSelector<
                                    EditInsuranceDetailsBloc,
                                    EditInsuranceDetailsState,
                                    TextEditingController?>(
                                  selector: (state) => state.dateController1,
                                  builder: (context, dateController1) {
                                    return CustomFloatingTextField(
                                      margin: getMargin(
                                        top: 60,
                                      ),
                                      controller: dateController1,
                                      labelText: "lbl_maturity_date".tr,
                                      labelStyle: theme.textTheme.titleMedium!,
                                      hintText: "lbl_maturity_date".tr,
                                      hintStyle: theme.textTheme.titleMedium!,
                                      textInputAction: TextInputAction.done,
                                      contentPadding: getPadding(
                                        left: 15,
                                        top: 16,
                                        right: 15,
                                        bottom: 12,
                                      ),
                                    );
                                  },
                                ),
                                Container(
                                  height: getVerticalSize(1),
                                  width: getHorizontalSize(145),
                                  margin: getMargin(
                                    top: 127,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                          height: getVerticalSize(44),
                                          width: getHorizontalSize(145),
                                          decoration: BoxDecoration(
                                            color: theme.colorScheme.primary,
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(5),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                          padding: getPadding(
                                            top: 12,
                                          ),
                                          child: Text(
                                            "lbl_update".tr,
                                            textAlign: TextAlign.center,
                                            style: CustomTextStyles
                                                .titleSmallOnPrimary_1,
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
