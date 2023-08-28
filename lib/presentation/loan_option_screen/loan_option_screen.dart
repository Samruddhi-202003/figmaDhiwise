import 'bloc/loan_option_bloc.dart';
import 'models/loan_option_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';

class LoanOptionScreen extends StatelessWidget {
  const LoanOptionScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LoanOptionBloc>(
      create: (context) => LoanOptionBloc(LoanOptionState(
        loanOptionModelObj: LoanOptionModel(),
      ))
        ..add(LoanOptionInitialEvent()),
      child: LoanOptionScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<LoanOptionBloc, LoanOptionState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
            body: Container(
              height: getVerticalSize(309),
              width: double.maxFinite,
              padding: getPadding(
                left: 29,
                right: 29,
              ),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: getMargin(
                        left: 2,
                        top: 24,
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
                      width: getHorizontalSize(113),
                      margin: getMargin(
                        left: 43,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_home2".tr,
                              style:
                                  CustomTextStyles.titleSmallBlack90001Medium,
                            ),
                            TextSpan(
                              text: "msg_bike_car_perso".tr,
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: Container(
              margin: getMargin(
                left: 49,
                right: 49,
                bottom: 41,
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
