import '../models/term_risk_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class TermRiskOneItemWidget extends StatelessWidget {
  TermRiskOneItemWidget(
    this.termRiskOneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TermRiskOneItemModel termRiskOneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 15,
        top: 12,
        right: 15,
        bottom: 12,
      ),
      decoration: AppDecoration.outlineRedA.copyWith(
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
              termRiskOneItemModelObj.coverneededTxt,
              style: CustomTextStyles.titleMediumMedium,
            ),
          ),
          CustomElevatedButton(
            height: getVerticalSize(36),
            width: getHorizontalSize(90),
            text: "lbl_25_lakh".tr,
            buttonStyle: CustomButtonStyles.fillRedA,
          ),
        ],
      ),
    );
  }
}
