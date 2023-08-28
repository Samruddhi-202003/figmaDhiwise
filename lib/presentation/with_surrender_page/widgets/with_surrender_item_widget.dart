import '../models/with_surrender_item_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class WithSurrenderItemWidget extends StatelessWidget {
  WithSurrenderItemWidget(
    this.withSurrenderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WithSurrenderItemModel withSurrenderItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(31),
      width: getHorizontalSize(300),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  withSurrenderItemModelObj.totalmonthlyinvTxt,
                  style: CustomTextStyles.bodyMedium14,
                ),
                Padding(
                  padding: getPadding(
                    top: 5,
                  ),
                  child: Divider(
                    color: appTheme.gray20001,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_rs".tr,
                    style: CustomTextStyles.labelLargeBluegray80001,
                  ),
                  TextSpan(
                    text: "lbl_4430".tr,
                    style: CustomTextStyles.headlineSmallBluegray80001_1,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
