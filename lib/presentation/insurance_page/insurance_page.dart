import 'bloc/insurance_bloc.dart';
import 'models/insurance_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/custom_checkbox_button.dart';
import 'package:samruddhi_s_application1/widgets/custom_elevated_button.dart';
import 'package:samruddhi_s_application1/widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class InsurancePage extends StatefulWidget {
  const InsurancePage({Key? key})
      : super(
          key: key,
        );

  @override
  InsurancePageState createState() => InsurancePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<InsuranceBloc>(
      create: (context) => InsuranceBloc(InsuranceState(
        insuranceModelObj: InsuranceModel(),
      ))
        ..add(InsuranceInitialEvent()),
      child: InsurancePage(),
    );
  }
}

class InsurancePageState extends State<InsurancePage>
    with AutomaticKeepAliveClientMixin<InsurancePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

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
                    top: 11,
                    right: 15,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: getVerticalSize(52),
                        width: getHorizontalSize(330),
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
                                  left: 10,
                                  top: 7,
                                  right: 10,
                                  bottom: 7,
                                ),
                                decoration:
                                    AppDecoration.outlineOrange5001.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 6,
                                        top: 3,
                                      ),
                                      child: Text(
                                        "msg_do_you_have_any2".tr,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ),
                                    BlocSelector<InsuranceBloc, InsuranceState,
                                        bool?>(
                                      selector: (state) => state.yes,
                                      builder: (context, yes) {
                                        return CustomCheckboxButton(
                                          text: "lbl_yes".tr,
                                          value: yes,
                                          margin: getMargin(
                                            top: 2,
                                          ),
                                          padding: getPadding(
                                            left: 5,
                                            top: 2,
                                            right: 7,
                                            bottom: 2,
                                          ),
                                          onChange: (value) {
                                            context.read<InsuranceBloc>().add(
                                                ChangeCheckBoxEvent(
                                                    value: value));
                                          },
                                        );
                                      },
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
                                  width: getHorizontalSize(61),
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
                                  "lbl_insurance".tr,
                                  style: theme.textTheme.labelMedium,
                                ),
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
                          top: 14,
                          right: 15,
                          bottom: 14,
                        ),
                        decoration: AppDecoration.outlineGray300.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BlocSelector<InsuranceBloc, InsuranceState,
                                TextEditingController?>(
                              selector: (state) =>
                                  state.healthinsuranceController,
                              builder: (context, healthinsuranceController) {
                                return CustomFloatingTextField(
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
                                      decoration: AppDecoration.outlineGray3002
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder5,
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
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                    height: getVerticalSize(20),
                                                    width:
                                                        getHorizontalSize(30),
                                                    decoration: BoxDecoration(
                                                      color: appTheme.orange500,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        getHorizontalSize(3),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.center,
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
                                        style:
                                            CustomTextStyles.labelMediumGray600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            BlocSelector<InsuranceBloc, InsuranceState,
                                TextEditingController?>(
                              selector: (state) => state.monthlyController,
                              builder: (context, monthlyController) {
                                return CustomFloatingTextField(
                                  margin: getMargin(
                                    top: 14,
                                  ),
                                  controller: monthlyController,
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
                                      decoration: AppDecoration.outlineGray3002
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder5,
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
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                    height: getVerticalSize(20),
                                                    width:
                                                        getHorizontalSize(30),
                                                    decoration: BoxDecoration(
                                                      color: appTheme.orange500,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        getHorizontalSize(3),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.center,
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
                                        style:
                                            CustomTextStyles.labelMediumGray600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            BlocSelector<InsuranceBloc, InsuranceState,
                                TextEditingController?>(
                              selector: (state) => state.dateController,
                              builder: (context, dateController) {
                                return CustomFloatingTextField(
                                  margin: getMargin(
                                    top: 14,
                                  ),
                                  controller: dateController,
                                  labelText: "lbl_expire_date".tr,
                                  labelStyle:
                                      CustomTextStyles.titleMediumBluegray100,
                                  hintText: "lbl_expire_date".tr,
                                  hintStyle:
                                      CustomTextStyles.titleMediumBluegray100,
                                  textInputAction: TextInputAction.done,
                                );
                              },
                            ),
                            CustomElevatedButton(
                              width: getHorizontalSize(145),
                              text: "lbl_save".tr,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
