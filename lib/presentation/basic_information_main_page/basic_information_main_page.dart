import 'bloc/basic_information_main_bloc.dart';
import 'models/basic_information_main_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/core/utils/validation_functions.dart';
import 'package:samruddhi_s_application1/widgets/custom_checkbox_button.dart';
import 'package:samruddhi_s_application1/widgets/custom_drop_down.dart';
import 'package:samruddhi_s_application1/widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class BasicInformationMainPage extends StatefulWidget {
  const BasicInformationMainPage({Key? key})
      : super(
          key: key,
        );

  @override
  BasicInformationMainPageState createState() =>
      BasicInformationMainPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<BasicInformationMainBloc>(
      create: (context) => BasicInformationMainBloc(BasicInformationMainState(
        basicInformationMainModelObj: BasicInformationMainModel(),
      ))
        ..add(BasicInformationMainInitialEvent()),
      child: BasicInformationMainPage(),
    );
  }
}

class BasicInformationMainPageState extends State<BasicInformationMainPage>
    with AutomaticKeepAliveClientMixin<BasicInformationMainPage> {
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
                                        BasicInformationMainBloc,
                                        BasicInformationMainState,
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
                                        BasicInformationMainBloc,
                                        BasicInformationMainState,
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
                            BlocSelector<
                                BasicInformationMainBloc,
                                BasicInformationMainState,
                                BasicInformationMainModel?>(
                              selector: (state) =>
                                  state.basicInformationMainModelObj,
                              builder: (context, basicInformationMainModelObj) {
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
                                  items: basicInformationMainModelObj
                                          ?.dropdownItemList ??
                                      [],
                                  onChanged: (value) {
                                    context
                                        .read<BasicInformationMainBloc>()
                                        .add(ChangeDropDownEvent(value: value));
                                  },
                                );
                              },
                            ),
                            BlocSelector<
                                BasicInformationMainBloc,
                                BasicInformationMainState,
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
                                    BlocSelector<BasicInformationMainBloc,
                                        BasicInformationMainState, bool?>(
                                      selector: (state) => state.yes,
                                      builder: (context, yes) {
                                        return CustomCheckboxButton(
                                          text: "lbl_yes".tr,
                                          value: yes,
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
                                                .read<
                                                    BasicInformationMainBloc>()
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
                                      BlocSelector<
                                          BasicInformationMainBloc,
                                          BasicInformationMainState,
                                          TextEditingController?>(
                                        selector: (state) =>
                                            state.nameController,
                                        builder: (context, nameController) {
                                          return CustomFloatingTextField(
                                            width: getHorizontalSize(215),
                                            controller: nameController,
                                            labelText: "lbl_spouse_name".tr,
                                            labelStyle: CustomTextStyles
                                                .titleMediumBluegray100,
                                            hintText: "lbl_spouse_name".tr,
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
                                          BasicInformationMainBloc,
                                          BasicInformationMainState,
                                          TextEditingController?>(
                                        selector: (state) =>
                                            state.dateOfBirthController1,
                                        builder:
                                            (context, dateOfBirthController1) {
                                          return CustomFloatingTextField(
                                            width: getHorizontalSize(215),
                                            margin: getMargin(
                                              top: 14,
                                            ),
                                            controller: dateOfBirthController1,
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
                            BlocSelector<
                                BasicInformationMainBloc,
                                BasicInformationMainState,
                                TextEditingController?>(
                              selector: (state) =>
                                  state.fewwordsforyourController,
                              builder: (context, fewwordsforyourController) {
                                return CustomFloatingTextField(
                                  margin: getMargin(
                                    top: 16,
                                  ),
                                  controller: fewwordsforyourController,
                                  labelText: "msg_few_words_for_your".tr,
                                  labelStyle:
                                      CustomTextStyles.titleMediumBluegray100,
                                  hintText: "msg_few_words_for_your".tr,
                                  hintStyle:
                                      CustomTextStyles.titleMediumBluegray100,
                                );
                              },
                            ),
                            BlocSelector<
                                BasicInformationMainBloc,
                                BasicInformationMainState,
                                TextEditingController?>(
                              selector: (state) => state.selfemployedController,
                              builder: (context, selfemployedController) {
                                return CustomFloatingTextField(
                                  margin: getMargin(
                                    top: 14,
                                  ),
                                  controller: selfemployedController,
                                  labelText: "lbl_profession".tr,
                                  labelStyle: theme.textTheme.titleMedium!,
                                  hintText: "lbl_profession".tr,
                                  hintStyle: theme.textTheme.titleMedium!,
                                  textInputAction: TextInputAction.done,
                                );
                              },
                            ),
                            Container(
                              height: getVerticalSize(24),
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
                                                  .titleMediumBluegray100,
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
