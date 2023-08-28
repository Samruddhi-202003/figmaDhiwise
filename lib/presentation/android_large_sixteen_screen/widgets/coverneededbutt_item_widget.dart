import '../models/coverneededbutt_item_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class CoverneededbuttItemWidget extends StatelessWidget {
  CoverneededbuttItemWidget(
    this.coverneededbuttItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CoverneededbuttItemModel coverneededbuttItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(300),
      padding: getPadding(
        left: 15,
        top: 12,
        right: 15,
        bottom: 12,
      ),
      decoration: AppDecoration.outlineGreen.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(
              top: 3,
              bottom: 6,
            ),
            child: Text(
              coverneededbuttItemModelObj.coverNeededTextTxt,
              style: CustomTextStyles.titleMediumMedium,
            ),
          ),
          CustomElevatedButton(
            height: getVerticalSize(36),
            width: getHorizontalSize(90),
            text: "lbl_3_lakh".tr,
            buttonStyle: CustomButtonStyles.fillGreen,
          ),
        ],
      ),
    );
  }
}
