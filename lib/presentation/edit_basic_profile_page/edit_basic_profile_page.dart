import 'bloc/edit_basic_profile_bloc.dart';
import 'models/edit_basic_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/core/utils/validation_functions.dart';
import 'package:samruddhi_s_application1/widgets/custom_checkbox_button.dart';
import 'package:samruddhi_s_application1/widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class EditBasicProfilePage extends StatefulWidget {
  const EditBasicProfilePage({Key? key})
      : super(
          key: key,
        );

  @override
  EditBasicProfilePageState createState() => EditBasicProfilePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<EditBasicProfileBloc>(
      create: (context) => EditBasicProfileBloc(EditBasicProfileState(
        editBasicProfileModelObj: EditBasicProfileModel(),
      ))
        ..add(EditBasicProfileInitialEvent()),
      child: EditBasicProfilePage(),
    );
  }
}

class EditBasicProfilePageState extends State<EditBasicProfilePage>
    with AutomaticKeepAliveClientMixin<EditBasicProfilePage> {
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
                    left: 15,
                    top: 10,
                    right: 15,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: getPadding(
                          left: 10,
                          top: 11,
                          right: 10,
                          bottom: 11,
                        ),
                        decoration: AppDecoration.outlineGray3001.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: getVerticalSize(53),
                                      width: getHorizontalSize(215),
                                      child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
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
                                              child: Padding(
                                                padding: getPadding(
                                                  top: 3,
                                                ),
                                                child: Text(
                                                  "lbl_subrata_poriya".tr,
                                                  style: CustomTextStyles
                                                      .titleMediumOnPrimaryContainer,
                                                ),
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
                                                width: getHorizontalSize(64),
                                                child: Divider(
                                                  color: appTheme.gray50,
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
                                                "lbl_full_name".tr,
                                                style:
                                                    theme.textTheme.labelMedium,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: getVerticalSize(53),
                                      width: getHorizontalSize(215),
                                      margin: getMargin(
                                        top: 13,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                              width: getHorizontalSize(215),
                                              margin: getMargin(
                                                top: 9,
                                              ),
                                              padding: getPadding(
                                                left: 10,
                                                top: 8,
                                                right: 10,
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 5,
                                                      top: 1,
                                                    ),
                                                    child: Text(
                                                      "lbl_11_02_1985".tr,
                                                      style: CustomTextStyles
                                                          .titleMediumOnPrimaryContainer,
                                                    ),
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgCalendar114x14,
                                                    height: getSize(14),
                                                    width: getSize(14),
                                                    margin: getMargin(
                                                      top: 6,
                                                      bottom: 6,
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
                                                width: getHorizontalSize(76),
                                                child: Divider(
                                                  color: appTheme.gray50,
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
                                                "lbl_date_of_birth".tr,
                                                style: CustomTextStyles
                                                    .labelMediumGray600,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
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
                            Container(
                              height: getVerticalSize(51),
                              width: getHorizontalSize(310),
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
                                        left: 14,
                                        top: 6,
                                        right: 14,
                                        bottom: 6,
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
                                              top: 2,
                                            ),
                                            child: Text(
                                              "lbl_male".tr,
                                              style: CustomTextStyles
                                                  .titleMediumOnPrimaryContainer,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgCalendar1,
                                            height: getVerticalSize(11),
                                            width: getHorizontalSize(12),
                                            margin: getMargin(
                                              top: 9,
                                              right: 1,
                                              bottom: 7,
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
                                        width: getHorizontalSize(81),
                                        child: Divider(
                                          indent: getHorizontalSize(9),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 14,
                                      ),
                                      child: Text(
                                        "lbl_select_gender".tr,
                                        style:
                                            CustomTextStyles.labelMediumGray600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            BlocSelector<EditBasicProfileBloc,
                                EditBasicProfileState, TextEditingController?>(
                              selector: (state) => state.emailController,
                              builder: (context, emailController) {
                                return CustomFloatingTextField(
                                  margin: getMargin(
                                    top: 14,
                                  ),
                                  controller: emailController,
                                  labelText: "lbl_email_addres".tr,
                                  labelStyle: CustomTextStyles
                                      .titleMediumOnPrimaryContainer,
                                  hintText: "lbl_email_addres".tr,
                                  hintStyle: CustomTextStyles
                                      .titleMediumOnPrimaryContainer,
                                  textInputType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  },
                                  contentPadding: getPadding(
                                    left: 15,
                                    right: 15,
                                    bottom: 7,
                                  ),
                                  borderDecoration:
                                      FloatingTextFormFieldStyleHelper
                                          .underLine1,
                                );
                              },
                            ),
                            Container(
                              height: getVerticalSize(51),
                              width: getHorizontalSize(310),
                              margin: getMargin(
                                top: 13,
                                bottom: 3,
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
                                        left: 14,
                                        top: 4,
                                        right: 14,
                                        bottom: 4,
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
                                              top: 5,
                                            ),
                                            child: Text(
                                              "lbl_shopkeepers".tr,
                                              style: CustomTextStyles
                                                  .titleMediumOnPrimaryContainer,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgCalendar1,
                                            height: getVerticalSize(11),
                                            width: getHorizontalSize(12),
                                            margin: getMargin(
                                              top: 10,
                                              right: 1,
                                              bottom: 9,
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
                                        width: getHorizontalSize(81),
                                        child: Divider(
                                          indent: getHorizontalSize(9),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 14,
                                      ),
                                      child: Text(
                                        "msg_select_profession".tr,
                                        style:
                                            CustomTextStyles.labelMediumGray600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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
                                  left: 11,
                                  top: 7,
                                  right: 11,
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
                                        "msg_are_you_married".tr,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ),
                                    BlocSelector<EditBasicProfileBloc,
                                        EditBasicProfileState, bool?>(
                                      selector: (state) => state.englishYes,
                                      builder: (context, englishYes) {
                                        return CustomCheckboxButton(
                                          text: "lbl_yes".tr,
                                          value: englishYes,
                                          margin: getMargin(
                                            top: 2,
                                          ),
                                          padding: getPadding(
                                            left: 6,
                                            top: 2,
                                            right: 7,
                                            bottom: 2,
                                          ),
                                          onChange: (value) {
                                            context
                                                .read<EditBasicProfileBloc>()
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
                        margin: getMargin(
                          top: 15,
                        ),
                        padding: getPadding(
                          left: 9,
                          right: 9,
                        ),
                        decoration: AppDecoration.outlineGray3001.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 12,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: getVerticalSize(51),
                                        width: getHorizontalSize(215),
                                        child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                padding: getPadding(
                                                  left: 15,
                                                  top: 7,
                                                  right: 15,
                                                  bottom: 7,
                                                ),
                                                decoration: AppDecoration
                                                    .outlineGray3002
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder5,
                                                ),
                                                child: Padding(
                                                  padding: getPadding(
                                                    top: 3,
                                                  ),
                                                  child: Text(
                                                    "lbl_sumita_poriya".tr,
                                                    style: CustomTextStyles
                                                        .titleMediumOnPrimaryContainer,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                padding: getPadding(
                                                  top: 6,
                                                ),
                                                child: SizedBox(
                                                  width: getHorizontalSize(80),
                                                  child: Divider(
                                                    color: appTheme.gray50,
                                                    indent:
                                                        getHorizontalSize(10),
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
                                                  "lbl_spouse_name".tr,
                                                  style: theme
                                                      .textTheme.labelMedium,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(53),
                                        width: getHorizontalSize(215),
                                        margin: getMargin(
                                          top: 14,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                width: getHorizontalSize(215),
                                                margin: getMargin(
                                                  top: 9,
                                                ),
                                                padding: getPadding(
                                                  left: 10,
                                                  top: 8,
                                                  right: 10,
                                                  bottom: 8,
                                                ),
                                                decoration: AppDecoration
                                                    .outlineGray3002
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder5,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 5,
                                                        top: 1,
                                                      ),
                                                      child: Text(
                                                        "lbl_11_02_1985".tr,
                                                        style: CustomTextStyles
                                                            .titleMediumOnPrimaryContainer,
                                                      ),
                                                    ),
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgCalendar114x14,
                                                      height: getSize(14),
                                                      width: getSize(14),
                                                      margin: getMargin(
                                                        top: 6,
                                                        bottom: 6,
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
                                                  width: getHorizontalSize(76),
                                                  child: Divider(
                                                    color: appTheme.gray50,
                                                    indent:
                                                        getHorizontalSize(10),
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
                                                  "lbl_date_of_birth".tr,
                                                  style: CustomTextStyles
                                                      .labelMediumGray600,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: getMargin(
                                      top: 6,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                            ),
                            BlocSelector<EditBasicProfileBloc,
                                EditBasicProfileState, TextEditingController?>(
                              selector: (state) =>
                                  state.spouseDescriptiController,
                              builder: (context, spouseDescriptiController) {
                                return CustomFloatingTextField(
                                  margin: getMargin(
                                    top: 16,
                                  ),
                                  controller: spouseDescriptiController,
                                  labelText: "msg_few_words_for_your".tr,
                                  labelStyle: CustomTextStyles
                                      .titleMediumOnPrimaryContainer,
                                  hintText: "msg_few_words_for_your".tr,
                                  hintStyle: CustomTextStyles
                                      .titleMediumOnPrimaryContainer,
                                  textInputAction: TextInputAction.done,
                                  contentPadding: getPadding(
                                    left: 15,
                                    right: 15,
                                    bottom: 7,
                                  ),
                                  borderDecoration:
                                      FloatingTextFormFieldStyleHelper
                                          .underLine,
                                );
                              },
                            ),
                            Container(
                              height: getVerticalSize(33),
                              width: getHorizontalSize(310),
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
                                          .outlineOrange5001
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder5,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              bottom: 3,
                                            ),
                                            child: Text(
                                              "lbl_self_employed".tr,
                                              style:
                                                  theme.textTheme.titleMedium,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgCalendar1,
                                            height: getVerticalSize(11),
                                            width: getHorizontalSize(12),
                                            margin: getMargin(
                                              top: 8,
                                              bottom: 9,
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
                                        width: getHorizontalSize(66),
                                        child: Divider(
                                          color: appTheme.gray50,
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
                                        "lbl_profession".tr,
                                        style: theme.textTheme.labelMedium,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: getVerticalSize(1),
                              width: getHorizontalSize(310),
                              margin: getMargin(
                                top: 35,
                              ),
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      margin: getMargin(
                                        top: 8,
                                      ),
                                      padding: getPadding(
                                        left: 10,
                                        top: 12,
                                        right: 10,
                                        bottom: 12,
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
                                              left: 5,
                                              top: 4,
                                            ),
                                            child: Text(
                                              "lbl_1_00_000".tr,
                                              style: CustomTextStyles
                                                  .titleMediumOnPrimaryContainer,
                                            ),
                                          ),
                                          Container(
                                            padding: getPadding(
                                              left: 5,
                                              top: 3,
                                              right: 5,
                                              bottom: 3,
                                            ),
                                            decoration: AppDecoration.fillOrange
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder5,
                                            ),
                                            child: Text(
                                              "lbl_inr".tr,
                                              style: CustomTextStyles
                                                  .labelLargeMedium,
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
                                        width: getHorizontalSize(87),
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
                                        "lbl_spouse_earning".tr,
                                        style: theme.textTheme.labelMedium,
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
  }
}
