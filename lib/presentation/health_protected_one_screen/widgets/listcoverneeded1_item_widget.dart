import '../models/listcoverneeded1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class Listcoverneeded1ItemWidget extends StatelessWidget {
  Listcoverneeded1ItemWidget(
    this.listcoverneeded1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Listcoverneeded1ItemModel listcoverneeded1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              listcoverneeded1ItemModelObj.coverneededTxt,
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
