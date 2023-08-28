import '../models/fianncial_plan1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class FianncialPlan1ItemWidget extends StatelessWidget {
  FianncialPlan1ItemWidget(
    this.fianncialPlan1ItemModelObj, {
    Key? key,
    this.onTapStacktermlifein,
  }) : super(
          key: key,
        );

  FianncialPlan1ItemModel fianncialPlan1ItemModelObj;

  VoidCallback? onTapStacktermlifein;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapStacktermlifein?.call();
      },
      child: SizedBox(
        height: getVerticalSize(40),
        width: getHorizontalSize(160),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                padding: getPadding(
                  left: 25,
                  top: 7,
                  right: 25,
                  bottom: 7,
                ),
                decoration: AppDecoration.gradientPrimaryToPink.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderLR20,
                ),
                child: Padding(
                  padding: getPadding(
                    bottom: 1,
                  ),
                  child: Text(
                    fianncialPlan1ItemModelObj.termlifeinsuranTxt,
                    style: CustomTextStyles.labelMediumOnPrimary,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: getPadding(
                  all: 2,
                ),
                decoration: AppDecoration.outlineBlack900014.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder20,
                ),
                child: Container(
                  height: getSize(36),
                  width: getSize(36),
                  padding: getPadding(
                    all: 3,
                  ),
                  decoration: AppDecoration.outlineBlack900015.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder20,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgLife1,
                    height: getSize(30),
                    width: getSize(30),
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
