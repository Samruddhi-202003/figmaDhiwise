import 'bloc/basic_details_bloc.dart';
import 'models/basic_details_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class BasicDetailsPage extends StatefulWidget {
  const BasicDetailsPage({Key? key})
      : super(
          key: key,
        );

  @override
  BasicDetailsPageState createState() => BasicDetailsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<BasicDetailsBloc>(
      create: (context) => BasicDetailsBloc(BasicDetailsState(
        basicDetailsModelObj: BasicDetailsModel(),
      ))
        ..add(BasicDetailsInitialEvent()),
      child: BasicDetailsPage(),
    );
  }
}

class BasicDetailsPageState extends State<BasicDetailsPage>
    with AutomaticKeepAliveClientMixin<BasicDetailsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<BasicDetailsBloc, BasicDetailsState>(
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
                    Container(
                      margin: getMargin(
                        left: 15,
                        top: 10,
                        right: 15,
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgAccount1,
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
                                    "msg_personal_details".tr,
                                    style:
                                        CustomTextStyles.titleSmallOnPrimary_1,
                                  ),
                                ),
                                Spacer(),
                                CustomImageView(
                                  svgPath: ImageConstant.imgEdit,
                                  height: getSize(12),
                                  width: getSize(12),
                                  margin: getMargin(
                                    top: 6,
                                    right: 1,
                                    bottom: 5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 10,
                                top: 4,
                                right: 10,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_full_name".tr,
                                        style: theme.textTheme.labelMedium,
                                      ),
                                      Text(
                                        "lbl_subrata_poriya".tr,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 6,
                                        ),
                                        child: Text(
                                          "lbl_date_of_birth".tr,
                                          style: theme.textTheme.labelMedium,
                                        ),
                                      ),
                                      Text(
                                        "lbl_05_11_1990".tr,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 46,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "lbl_gender".tr,
                                          style: theme.textTheme.labelMedium,
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "lbl_male".tr,
                                            style: theme.textTheme.titleMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgJfhjdnr2,
                                    height: getVerticalSize(70),
                                    width: getHorizontalSize(63),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(5),
                                    ),
                                    margin: getMargin(
                                      top: 5,
                                      bottom: 8,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 10,
                              top: 7,
                            ),
                            child: Text(
                              "lbl_profession".tr,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 10,
                            ),
                            child: Text(
                              "msg_digital_workforce".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 10,
                              top: 8,
                            ),
                            child: Text(
                              "lbl_email_address".tr,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 10,
                            ),
                            child: Text(
                              "msg_subrataporiya137_gmail_com".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 10,
                              top: 5,
                            ),
                            child: Text(
                              "lbl_marital_status".tr,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 10,
                            ),
                            child: Text(
                              "lbl_yes2".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 10,
                                top: 9,
                                right: 10,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_spouse_name".tr,
                                        style: theme.textTheme.labelMedium,
                                      ),
                                      Text(
                                        "lbl_sumita_poriya".tr,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 7,
                                        ),
                                        child: Text(
                                          "lbl_date_of_birth".tr,
                                          style: theme.textTheme.labelMedium,
                                        ),
                                      ),
                                      Text(
                                        "lbl_12_02_1995".tr,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ],
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgJfhjdnr3,
                                    height: getVerticalSize(70),
                                    width: getHorizontalSize(63),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(5),
                                    ),
                                    margin: getMargin(
                                      top: 2,
                                      bottom: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 10,
                              top: 11,
                            ),
                            child: Text(
                              "msg_few_words_for_your".tr,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(293),
                            margin: getMargin(
                              left: 10,
                              right: 27,
                            ),
                            child: Text(
                              "msg_she_is_the_best".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 10,
                              top: 10,
                            ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_profession".tr,
                                      style: theme.textTheme.labelMedium,
                                    ),
                                    Text(
                                      "lbl_self_employed".tr,
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 53,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_spouse_earning".tr,
                                        style: theme.textTheme.labelMedium,
                                      ),
                                      Text(
                                        "lbl_12_000".tr,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 10,
                              top: 6,
                            ),
                            child: Text(
                              "msg_do_you_have_children".tr,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 10,
                            ),
                            child: Text(
                              "lbl_yes2".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 10,
                                top: 7,
                                right: 10,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_child_name".tr,
                                        style: theme.textTheme.labelMedium,
                                      ),
                                      Text(
                                        "lbl_supriyo_poriya".tr,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 6,
                                        ),
                                        child: Text(
                                          "lbl_date_of_birth".tr,
                                          style: theme.textTheme.labelMedium,
                                        ),
                                      ),
                                      Text(
                                        "lbl_22_08_2019".tr,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 46,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "lbl_gender".tr,
                                          style: theme.textTheme.labelMedium,
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "lbl_male".tr,
                                            style: theme.textTheme.titleMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgJfhjdnr4,
                                    height: getVerticalSize(70),
                                    width: getHorizontalSize(63),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(5),
                                    ),
                                    margin: getMargin(
                                      top: 4,
                                      bottom: 9,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 10,
                              top: 11,
                            ),
                            child: Text(
                              "msg_few_words_for_your".tr,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 10,
                            ),
                            child: Text(
                              "msg_she_is_studious".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 10,
                              top: 28,
                              right: 63,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_marital_status".tr,
                                      style: theme.textTheme.labelMedium,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 5,
                                      ),
                                      child: Text(
                                        "lbl_no2".tr,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "msg_when_you_are_planning2".tr,
                                      style: theme.textTheme.labelMedium,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 5,
                                      ),
                                      child: Text(
                                        "lbl_3_yrs_later".tr,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 10,
                                top: 81,
                                right: 7,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "msg_do_you_have_children2".tr,
                                        style: theme.textTheme.labelMedium,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 5,
                                        ),
                                        child: Text(
                                          "lbl_no2".tr,
                                          style: theme.textTheme.titleMedium,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "msg_what_amount_is_needed".tr,
                                        style: theme.textTheme.labelMedium,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 5,
                                        ),
                                        child: Text(
                                          "lbl_2_00_000".tr,
                                          style: theme.textTheme.titleMedium,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 10,
                              top: 127,
                            ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "msg_do_you_have_a_own2".tr,
                                      style: theme.textTheme.labelMedium,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 5,
                                      ),
                                      child: Text(
                                        "lbl_no2".tr,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 14,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_current_value".tr,
                                        style: theme.textTheme.labelMedium,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 5,
                                        ),
                                        child: Text(
                                          "lbl_20_00_000".tr,
                                          style: theme.textTheme.titleMedium,
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
                              left: 10,
                              top: 15,
                            ),
                            child: Text(
                              "msg_when_do_you_want".tr,
                              style: CustomTextStyles.labelSmallGray60001,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 10,
                              top: 5,
                            ),
                            child: Text(
                              "lbl_20_00_000".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 10,
                              top: 15,
                              right: 31,
                            ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "msg_do_you_have_a_own2".tr,
                                      style: theme.textTheme.labelMedium,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 5,
                                      ),
                                      child: Text(
                                        "lbl_yes2".tr,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 14,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "msg_any_loan_on_this2".tr,
                                        style: theme.textTheme.labelMedium,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 5,
                                        ),
                                        child: Text(
                                          "lbl_yes2".tr,
                                          style: theme.textTheme.titleMedium,
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
