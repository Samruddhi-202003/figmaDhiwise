import '../models/my_badi_bahen1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class MyBadiBahen1ItemWidget extends StatelessWidget {
  MyBadiBahen1ItemWidget(
    this.myBadiBahen1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MyBadiBahen1ItemModel myBadiBahen1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(47),
      width: getHorizontalSize(100),
      margin: getMargin(
        bottom: 45,
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: getPadding(
                left: 11,
                top: 2,
                right: 11,
                bottom: 2,
              ),
              decoration: AppDecoration.outlineOrange5003.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Padding(
                padding: getPadding(
                  top: 1,
                ),
                child: Text(
                  myBadiBahen1ItemModelObj.anikdasTxt,
                  style: theme.textTheme.titleLarge,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: getVerticalSize(14),
              width: getHorizontalSize(54),
              decoration: BoxDecoration(
                color: appTheme.orange500,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(7),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: getPadding(
                top: 1,
              ),
              child: Text(
                "lbl_daughter".tr,
                style: CustomTextStyles.labelSmallOnPrimary_1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
