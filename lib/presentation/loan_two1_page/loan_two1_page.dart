import 'bloc/loan_two1_bloc.dart';
import 'models/loan_two1_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class LoanTwo1Page extends StatefulWidget {
  const LoanTwo1Page({Key? key})
      : super(
          key: key,
        );

  @override
  LoanTwo1PageState createState() => LoanTwo1PageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LoanTwo1Bloc>(
      create: (context) => LoanTwo1Bloc(LoanTwo1State(
        loanTwo1ModelObj: LoanTwo1Model(),
      ))
        ..add(LoanTwo1InitialEvent()),
      child: LoanTwo1Page(),
    );
  }
}

class LoanTwo1PageState extends State<LoanTwo1Page>
    with AutomaticKeepAliveClientMixin<LoanTwo1Page> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<LoanTwo1Bloc, LoanTwo1State>(
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
                        top: 13,
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
                                    decoration: AppDecoration.outlineOrange5001
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
                                            left: 6,
                                            top: 3,
                                          ),
                                          child: Text(
                                            "msg_do_you_have_any".tr,
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
                                          decoration: AppDecoration
                                              .outlineOrange500
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder5,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "lbl_no".tr,
                                                style:
                                                    theme.textTheme.titleSmall,
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
                                  child: Container(
                                    height: getVerticalSize(3),
                                    width: getHorizontalSize(31),
                                    margin: getMargin(
                                      left: 10,
                                      top: 7,
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
                                      "lbl_loan2".tr,
                                      style: theme.textTheme.labelMedium,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgLoanfree1,
                            height: getVerticalSize(245),
                            width: getHorizontalSize(226),
                            margin: getMargin(
                              top: 124,
                            ),
                          ),
                          Spacer(),
                          CustomElevatedButton(
                            width: getHorizontalSize(160),
                            text: "lbl_next".tr,
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
