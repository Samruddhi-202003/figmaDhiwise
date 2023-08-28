import 'bloc/loan_option_one_bloc.dart';
import 'models/loan_option_one_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';

class LoanOptionOneScreen extends StatelessWidget {
  const LoanOptionOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LoanOptionOneBloc>(
      create: (context) => LoanOptionOneBloc(LoanOptionOneState(
        loanOptionOneModelObj: LoanOptionOneModel(),
      ))
        ..add(LoanOptionOneInitialEvent()),
      child: LoanOptionOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<LoanOptionOneBloc, LoanOptionOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
            body: Container(
              height: getVerticalSize(397),
              width: double.maxFinite,
              padding: getPadding(
                left: 24,
                right: 24,
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: getPadding(
                        left: 2,
                        bottom: 20,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: getPadding(
                              left: 15,
                              top: 12,
                              right: 15,
                              bottom: 12,
                            ),
                            decoration: AppDecoration.outlineGray300.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Container(
                              padding: getPadding(
                                all: 3,
                              ),
                              decoration: AppDecoration.fillGray300.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Container(
                                height: getSize(10),
                                width: getSize(10),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimary
                                      .withOpacity(1),
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              top: 5,
                            ),
                            padding: getPadding(
                              left: 15,
                              top: 12,
                              right: 15,
                              bottom: 12,
                            ),
                            decoration: AppDecoration.outlineGray300.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Container(
                              padding: getPadding(
                                all: 3,
                              ),
                              decoration: AppDecoration.fillGray300.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Container(
                                height: getSize(10),
                                width: getSize(10),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimary
                                      .withOpacity(1),
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              top: 5,
                            ),
                            padding: getPadding(
                              left: 15,
                              top: 12,
                              right: 15,
                              bottom: 12,
                            ),
                            decoration: AppDecoration.outlineOrange500.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Container(
                              padding: getPadding(
                                all: 3,
                              ),
                              decoration: AppDecoration.fillOrange.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Container(
                                height: getSize(10),
                                width: getSize(10),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimary
                                      .withOpacity(1),
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              top: 5,
                            ),
                            padding: getPadding(
                              left: 15,
                              top: 12,
                              right: 15,
                              bottom: 12,
                            ),
                            decoration: AppDecoration.outlineGray300.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Container(
                              padding: getPadding(
                                all: 3,
                              ),
                              decoration: AppDecoration.fillGray300.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Container(
                                height: getSize(10),
                                width: getSize(10),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimary
                                      .withOpacity(1),
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              top: 5,
                            ),
                            padding: getPadding(
                              left: 15,
                              top: 12,
                              right: 15,
                              bottom: 12,
                            ),
                            decoration: AppDecoration.outlineGray300.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Container(
                              padding: getPadding(
                                all: 3,
                              ),
                              decoration: AppDecoration.fillGray300.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Container(
                                height: getSize(10),
                                width: getSize(10),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimary
                                      .withOpacity(1),
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              top: 5,
                            ),
                            padding: getPadding(
                              left: 15,
                              top: 12,
                              right: 15,
                              bottom: 12,
                            ),
                            decoration: AppDecoration.outlineGray300.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Container(
                              padding: getPadding(
                                all: 3,
                              ),
                              decoration: AppDecoration.fillGray300.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Container(
                                height: getSize(10),
                                width: getSize(10),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimary
                                      .withOpacity(1),
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              top: 5,
                            ),
                            padding: getPadding(
                              left: 15,
                              top: 12,
                              right: 15,
                              bottom: 12,
                            ),
                            decoration: AppDecoration.outlineGray300.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Container(
                              padding: getPadding(
                                all: 3,
                              ),
                              decoration: AppDecoration.fillGray300.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Container(
                                height: getSize(10),
                                width: getSize(10),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimary
                                      .withOpacity(1),
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: getMargin(
                        left: 2,
                        top: 22,
                      ),
                      padding: getPadding(
                        left: 15,
                        top: 12,
                        right: 15,
                        bottom: 12,
                      ),
                      decoration: AppDecoration.outlineGray300.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: Container(
                        padding: getPadding(
                          all: 3,
                        ),
                        decoration: AppDecoration.fillGray300.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Container(
                          height: getSize(10),
                          width: getSize(10),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimary.withOpacity(1),
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(5),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      width: getHorizontalSize(159),
                      margin: getMargin(
                        left: 43,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_emergancy_fund2".tr,
                              style: CustomTextStyles.titleSmallGray60001,
                            ),
                            TextSpan(
                              text: "msg_priyanka_s_higher4".tr,
                              style: CustomTextStyles.titleSmallGray60001,
                            ),
                            TextSpan(
                              text: "msg_pritam_s_higher4".tr,
                              style:
                                  CustomTextStyles.titleSmallGray60001.copyWith(
                                height: 3.21,
                              ),
                            ),
                            TextSpan(
                              text: "msg_priyanka_s_grand2".tr,
                              style:
                                  CustomTextStyles.titleSmallGray60001.copyWith(
                                height: 3.21,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: Container(
              margin: getMargin(
                left: 44,
                right: 44,
                bottom: 43,
              ),
              decoration: AppDecoration.outlineGray3008.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Container(
                decoration: AppDecoration.fillGray300.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Container(
                  height: getSize(10),
                  width: getSize(10),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimary.withOpacity(1),
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(5),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
