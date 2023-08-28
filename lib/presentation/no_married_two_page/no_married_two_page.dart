import 'bloc/no_married_two_bloc.dart';
import 'models/no_married_two_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/core/utils/validation_functions.dart';
import 'package:samruddhi_s_application1/widgets/custom_checkbox_button.dart';
import 'package:samruddhi_s_application1/widgets/custom_drop_down.dart';
import 'package:samruddhi_s_application1/widgets/custom_elevated_button.dart';
import 'package:samruddhi_s_application1/widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class NoMarriedTwoPage extends StatefulWidget {
  const NoMarriedTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  NoMarriedTwoPageState createState() => NoMarriedTwoPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<NoMarriedTwoBloc>(
      create: (context) => NoMarriedTwoBloc(NoMarriedTwoState(
        noMarriedTwoModelObj: NoMarriedTwoModel(),
      ))
        ..add(NoMarriedTwoInitialEvent()),
      child: NoMarriedTwoPage(),
    );
  }
}

class NoMarriedTwoPageState extends State<NoMarriedTwoPage>
    with AutomaticKeepAliveClientMixin<NoMarriedTwoPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 14,
                    top: 10,
                    right: 14,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: getPadding(
                          all: 10,
                        ),
                        decoration: AppDecoration.outlineGray3001.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    BlocSelector<
                                        NoMarriedTwoBloc,
                                        NoMarriedTwoState,
                                        TextEditingController?>(
                                      selector: (state) =>
                                          state.fullNameController,
                                      builder: (context, fullNameController) {
                                        return CustomFloatingTextField(
                                          width: getHorizontalSize(215),
                                          controller: fullNameController,
                                          labelText: "lbl_full_name".tr,
                                          labelStyle: CustomTextStyles
                                              .titleMediumBluegray100,
                                          hintText: "lbl_full_name".tr,
                                          hintStyle: CustomTextStyles
                                              .titleMediumBluegray100,
                                          validator: (value) {
                                            if (!isText(value)) {
                                              return "Please enter valid text";
                                            }
                                            return null;
                                          },
                                        );
                                      },
                                    ),
                                    BlocSelector<
                                        NoMarriedTwoBloc,
                                        NoMarriedTwoState,
                                        TextEditingController?>(
                                      selector: (state) =>
                                          state.dateOfBirthController,
                                      builder:
                                          (context, dateOfBirthController) {
                                        return CustomFloatingTextField(
                                          width: getHorizontalSize(215),
                                          margin: getMargin(
                                            top: 13,
                                          ),
                                          controller: dateOfBirthController,
                                          labelText: "lbl_date_of_birth".tr,
                                          labelStyle: CustomTextStyles
                                              .titleMediumBluegray100,
                                          hintText: "lbl_date_of_birth".tr,
                                          hintStyle: CustomTextStyles
                                              .titleMediumBluegray100,
                                        );
                                      },
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: getMargin(
                                    top: 8,
                                  ),
                                  padding: getPadding(
                                    left: 6,
                                    top: 11,
                                    right: 6,
                                    bottom: 11,
                                  ),
                                  decoration:
                                      AppDecoration.outlineGray300.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgUser,
                                        height: getSize(50),
                                        width: getSize(50),
                                      ),
                                      Container(
                                        width: getHorizontalSize(67),
                                        margin: getMargin(
                                          top: 9,
                                          bottom: 2,
                                        ),
                                        child: Text(
                                          "msg_browse_profile_picture".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .labelMediumGray60011
                                              .copyWith(
                                            height: 1.27,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            BlocSelector<NoMarriedTwoBloc, NoMarriedTwoState,
                                NoMarriedTwoModel?>(
                              selector: (state) => state.noMarriedTwoModelObj,
                              builder: (context, noMarriedTwoModelObj) {
                                return CustomDropDown(
                                  icon: Container(
                                    margin: getMargin(
                                      left: 30,
                                      right: 15,
                                    ),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgCalendar1,
                                      height: getVerticalSize(11),
                                      width: getHorizontalSize(12),
                                    ),
                                  ),
                                  margin: getMargin(
                                    top: 14,
                                  ),
                                  hintText: "lbl_select_gender".tr,
                                  hintStyle:
                                      CustomTextStyles.titleMediumBluegray100,
                                  items:
                                      noMarriedTwoModelObj?.dropdownItemList ??
                                          [],
                                  onChanged: (value) {
                                    context
                                        .read<NoMarriedTwoBloc>()
                                        .add(ChangeDropDownEvent(value: value));
                                  },
                                );
                              },
                            ),
                            BlocSelector<NoMarriedTwoBloc, NoMarriedTwoState,
                                TextEditingController?>(
                              selector: (state) => state.emailController,
                              builder: (context, emailController) {
                                return CustomFloatingTextField(
                                  margin: getMargin(
                                    top: 14,
                                    bottom: 5,
                                  ),
                                  controller: emailController,
                                  labelText: "lbl_email_addres".tr,
                                  labelStyle:
                                      CustomTextStyles.titleMediumBluegray100,
                                  hintText: "lbl_email_addres".tr,
                                  hintStyle:
                                      CustomTextStyles.titleMediumBluegray100,
                                  textInputType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getVerticalSize(53),
                        width: getHorizontalSize(330),
                        margin: getMargin(
                          top: 10,
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
                                        "msg_are_you_married".tr,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ),
                                    Container(
                                      margin: getMargin(
                                        top: 2,
                                      ),
                                      padding: getPadding(
                                        left: 6,
                                        top: 2,
                                        right: 6,
                                        bottom: 2,
                                      ),
                                      decoration: AppDecoration.outlineOrange500
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder5,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "lbl_no".tr,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                          Container(
                                            height: getSize(18),
                                            width: getSize(18),
                                            margin: getMargin(
                                              left: 6,
                                              top: 2,
                                              bottom: 2,
                                            ),
                                            decoration: BoxDecoration(
                                              color: appTheme.orange500,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(3),
                                              ),
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
                                  width: getHorizontalSize(82),
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
                                  "lbl_marital_status".tr,
                                  style: theme.textTheme.labelMedium,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getVerticalSize(52),
                        width: getHorizontalSize(330),
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
                                  top: 8,
                                ),
                                padding: getPadding(
                                  left: 14,
                                  top: 8,
                                  right: 14,
                                  bottom: 8,
                                ),
                                decoration:
                                    AppDecoration.outlineGray3002.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 2,
                                      ),
                                      child: Text(
                                        "lbl_no_of_years".tr,
                                        style:
                                            CustomTextStyles.titleMediumGray300,
                                      ),
                                    ),
                                    Spacer(),
                                    SizedBox(
                                      height: getVerticalSize(25),
                                      width: getHorizontalSize(23),
                                      child: Stack(
                                        alignment: Alignment.centerRight,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              height: getVerticalSize(24),
                                              width: getHorizontalSize(23),
                                              decoration: BoxDecoration(
                                                color: appTheme.amber700,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  getHorizontalSize(12),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                              padding: getPadding(
                                                right: 7,
                                              ),
                                              child: Text(
                                                "lbl_0".tr,
                                                style: CustomTextStyles
                                                    .titleSmallOnPrimary15_1,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: getHorizontalSize(64),
                                      margin: getMargin(
                                        left: 10,
                                      ),
                                      padding: getPadding(
                                        left: 8,
                                        top: 1,
                                        right: 8,
                                        bottom: 1,
                                      ),
                                      decoration: AppDecoration
                                          .outlineDeepOrange
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder5,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "lbl_2023".tr,
                                            style: CustomTextStyles
                                                .labelLargeBlack90001Medium13,
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgCalendar1,
                                            height: getVerticalSize(8),
                                            width: getHorizontalSize(7),
                                            margin: getMargin(
                                              left: 9,
                                              top: 6,
                                              bottom: 6,
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
                                  width: getHorizontalSize(125),
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
                                  left: 17,
                                ),
                                child: Text(
                                  "msg_when_you_are_planning".tr,
                                  style: theme.textTheme.labelMedium,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getVerticalSize(52),
                        width: getHorizontalSize(330),
                        margin: getMargin(
                          top: 12,
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: BlocSelector<
                                          NoMarriedTwoBloc,
                                          NoMarriedTwoState,
                                          TextEditingController?>(
                                        selector: (state) =>
                                            state.doyouhaveaownController,
                                        builder:
                                            (context, doyouhaveaownController) {
                                          return CustomFloatingTextField(
                                            margin: getMargin(
                                              top: 3,
                                            ),
                                            controller: doyouhaveaownController,
                                            labelText:
                                                "msg_do_you_have_a_own".tr,
                                            labelStyle:
                                                theme.textTheme.titleMedium!,
                                            hintText:
                                                "msg_do_you_have_a_own".tr,
                                            hintStyle:
                                                theme.textTheme.titleMedium!,
                                            textInputAction:
                                                TextInputAction.done,
                                            borderDecoration:
                                                FloatingTextFormFieldStyleHelper
                                                    .custom,
                                          );
                                        },
                                      ),
                                    ),
                                    BlocSelector<NoMarriedTwoBloc,
                                        NoMarriedTwoState, bool?>(
                                      selector: (state) => state.englishYes,
                                      builder: (context, englishYes) {
                                        return CustomCheckboxButton(
                                          text: "lbl_yes".tr,
                                          value: englishYes,
                                          margin: getMargin(
                                            left: 6,
                                            top: 2,
                                          ),
                                          padding: getPadding(
                                            left: 5,
                                            top: 2,
                                            right: 7,
                                            bottom: 2,
                                          ),
                                          onChange: (value) {
                                            context
                                                .read<NoMarriedTwoBloc>()
                                                .add(ChangeCheckBoxEvent(
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
                                  width: getHorizontalSize(72),
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
                                  "lbl_flat_house".tr,
                                  style: theme.textTheme.labelMedium,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getVerticalSize(52),
                        width: getHorizontalSize(330),
                        margin: getMargin(
                          top: 12,
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
                                        left: 5,
                                        top: 3,
                                      ),
                                      child: Text(
                                        "msg_any_loan_on_this".tr,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ),
                                    Container(
                                      margin: getMargin(
                                        top: 2,
                                      ),
                                      padding: getPadding(
                                        left: 6,
                                        top: 2,
                                        right: 6,
                                        bottom: 2,
                                      ),
                                      decoration: AppDecoration.outlineOrange500
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder5,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "lbl_no".tr,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                          Container(
                                            height: getSize(18),
                                            width: getSize(18),
                                            margin: getMargin(
                                              left: 6,
                                              top: 2,
                                              bottom: 2,
                                            ),
                                            decoration: BoxDecoration(
                                              color: appTheme.orange500,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(3),
                                              ),
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
                                  width: getHorizontalSize(72),
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
                                  "lbl_flat_house".tr,
                                  style: theme.textTheme.labelMedium,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getVerticalSize(53),
                        width: getHorizontalSize(330),
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
                                decoration:
                                    AppDecoration.outlineGray3002.copyWith(
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
                                        "lbl_1_00_000".tr,
                                        style: CustomTextStyles
                                            .titleMediumBluegray100,
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
                                              width: getHorizontalSize(30),
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
                                  width: getHorizontalSize(80),
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
                                  "lbl_current_value".tr,
                                  style: theme.textTheme.labelMedium,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 21,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: CustomElevatedButton(
                                height: getVerticalSize(32),
                                text: "lbl_save".tr.toUpperCase(),
                                margin: getMargin(
                                  right: 5,
                                ),
                                buttonStyle: CustomButtonStyles.none,
                              ),
                            ),
                            Expanded(
                              child: CustomElevatedButton(
                                height: getVerticalSize(32),
                                text: "lbl_cancle".tr.toUpperCase(),
                                margin: getMargin(
                                  left: 5,
                                ),
                                buttonStyle: CustomButtonStyles.none,
                                buttonTextStyle:
                                    CustomTextStyles.titleSmallBluegray80001_2,
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
