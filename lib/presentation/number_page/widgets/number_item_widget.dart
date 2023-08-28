import '../models/number_item_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class NumberItemWidget extends StatelessWidget {
  NumberItemWidget(
    this.numberItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NumberItemModel numberItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                left: 15,
                top: 7,
                right: 15,
                bottom: 7,
              ),
              decoration: AppDecoration.outlineGray3002.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 3,
                      top: 3,
                    ),
                    child: Text(
                      numberItemModelObj.twohundredthousTxt,
                      style: CustomTextStyles.titleMediumGray300,
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
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(3),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_inr".tr,
                            style: CustomTextStyles.labelLargeMedium,
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
                width: getHorizontalSize(182),
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
                numberItemModelObj.currentbudgetfoTxt,
                style: theme.textTheme.labelMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
