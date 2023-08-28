import '../models/listhealth_item_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListhealthItemWidget extends StatelessWidget {
  ListhealthItemWidget(
    this.listhealthItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListhealthItemModel listhealthItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgAccount11,
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
                    bottom: 1,
                  ),
                  child: Text(
                    "msg_health_insurance".tr,
                    style: CustomTextStyles.titleSmallOnPrimary_1,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  svgPath: ImageConstant.imgEdit,
                  height: getSize(12),
                  width: getSize(12),
                  margin: getMargin(
                    top: 6,
                    bottom: 6,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgDelete1,
                  height: getSize(12),
                  width: getSize(12),
                  margin: getMargin(
                    left: 14,
                    top: 6,
                    bottom: 6,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 15,
              top: 6,
            ),
            child: Row(
              children: [
                Padding(
                  padding: getPadding(
                    bottom: 1,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "msg_type_of_insurance".tr,
                        style: theme.textTheme.labelMedium,
                      ),
                      Text(
                        "msg_health_insurance".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 31,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_sum_insured".tr,
                        style: theme.textTheme.labelMedium,
                      ),
                      Text(
                        "lbl_2_00_000".tr,
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
              left: 15,
              top: 6,
              bottom: 14,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "lbl_premium_type".tr,
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                    Text(
                      listhealthItemModelObj.monthlyTxt,
                      style: theme.textTheme.titleMedium,
                    ),
                  ],
                ),
                Padding(
                  padding: getPadding(
                    left: 87,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_premium_amount".tr,
                        style: theme.textTheme.labelMedium,
                      ),
                      Text(
                        listhealthItemModelObj.fourhundredTxt,
                        style: theme.textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
