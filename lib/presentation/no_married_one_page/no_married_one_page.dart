import '../no_married_one_page/widgets/no_married_one_item_widget.dart';
import 'bloc/no_married_one_bloc.dart';
import 'models/no_married_one_item_model.dart';
import 'models/no_married_one_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/core/utils/validation_functions.dart';
import 'package:samruddhi_s_application1/widgets/custom_drop_down.dart';
import 'package:samruddhi_s_application1/widgets/custom_elevated_button.dart';
import 'package:samruddhi_s_application1/widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class NoMarriedOnePage extends StatefulWidget {
  const NoMarriedOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  NoMarriedOnePageState createState() => NoMarriedOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<NoMarriedOneBloc>(
      create: (context) => NoMarriedOneBloc(NoMarriedOneState(
        noMarriedOneModelObj: NoMarriedOneModel(),
      ))
        ..add(NoMarriedOneInitialEvent()),
      child: NoMarriedOnePage(),
    );
  }
}

class NoMarriedOnePageState extends State<NoMarriedOnePage>
    with AutomaticKeepAliveClientMixin<NoMarriedOnePage> {
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
                Expanded(
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Padding(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        BlocSelector<
                                            NoMarriedOneBloc,
                                            NoMarriedOneState,
                                            TextEditingController?>(
                                          selector: (state) =>
                                              state.fullNameController,
                                          builder:
                                              (context, fullNameController) {
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
                                            NoMarriedOneBloc,
                                            NoMarriedOneState,
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
                                BlocSelector<NoMarriedOneBloc,
                                    NoMarriedOneState, NoMarriedOneModel?>(
                                  selector: (state) =>
                                      state.noMarriedOneModelObj,
                                  builder: (context, noMarriedOneModelObj) {
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
                                      hintStyle: CustomTextStyles
                                          .titleMediumBluegray100,
                                      items: noMarriedOneModelObj
                                              ?.dropdownItemList ??
                                          [],
                                      onChanged: (value) {
                                        context.read<NoMarriedOneBloc>().add(
                                            ChangeDropDownEvent(value: value));
                                      },
                                    );
                                  },
                                ),
                                BlocSelector<NoMarriedOneBloc,
                                    NoMarriedOneState, TextEditingController?>(
                                  selector: (state) => state.emailController,
                                  builder: (context, emailController) {
                                    return CustomFloatingTextField(
                                      margin: getMargin(
                                        top: 14,
                                        bottom: 5,
                                      ),
                                      controller: emailController,
                                      labelText: "lbl_email_addres".tr,
                                      labelStyle: CustomTextStyles
                                          .titleMediumBluegray100,
                                      hintText: "lbl_email_addres".tr,
                                      hintStyle: CustomTextStyles
                                          .titleMediumBluegray100,
                                      textInputAction: TextInputAction.done,
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
                          Expanded(
                            child: Padding(
                              padding: getPadding(
                                top: 10,
                              ),
                              child: BlocSelector<NoMarriedOneBloc,
                                  NoMarriedOneState, NoMarriedOneModel?>(
                                selector: (state) => state.noMarriedOneModelObj,
                                builder: (context, noMarriedOneModelObj) {
                                  return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (
                                      context,
                                      index,
                                    ) {
                                      return SizedBox(
                                        height: getVerticalSize(14),
                                      );
                                    },
                                    itemCount: noMarriedOneModelObj
                                            ?.noMarriedOneItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      NoMarriedOneItemModel model =
                                          noMarriedOneModelObj
                                                      ?.noMarriedOneItemList[
                                                  index] ??
                                              NoMarriedOneItemModel();
                                      return NoMarriedOneItemWidget(
                                        model,
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 17,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: CustomElevatedButton(
                                    height: getVerticalSize(37),
                                    text: "lbl_save".tr.toUpperCase(),
                                    margin: getMargin(
                                      right: 5,
                                    ),
                                    buttonStyle: CustomButtonStyles.none,
                                  ),
                                ),
                                Expanded(
                                  child: CustomElevatedButton(
                                    height: getVerticalSize(37),
                                    text: "lbl_cancle".tr.toUpperCase(),
                                    margin: getMargin(
                                      left: 5,
                                    ),
                                    buttonStyle: CustomButtonStyles.none,
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
