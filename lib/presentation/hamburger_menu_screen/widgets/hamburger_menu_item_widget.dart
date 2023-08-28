import '../models/hamburger_menu_item_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class HamburgerMenuItemWidget extends StatelessWidget {
  HamburgerMenuItemWidget(
    this.hamburgerMenuItemModelObj, {
    Key? key,
    this.onTapRowmy,
  }) : super(
          key: key,
        );

  HamburgerMenuItemModel hamburgerMenuItemModelObj;

  VoidCallback? onTapRowmy;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapRowmy?.call();
      },
      child: Container(
        padding: getPadding(
          left: 15,
          top: 7,
          right: 15,
          bottom: 7,
        ),
        decoration: AppDecoration.outlineBlack900017.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Row(
          children: [
            Container(
              height: getSize(30),
              width: getSize(30),
              padding: getPadding(
                all: 7,
              ),
              decoration: AppDecoration.fillGray10001.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder15,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgSfa1,
                height: getSize(16),
                width: getSize(16),
                alignment: Alignment.center,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 10,
                bottom: 2,
              ),
              child: Text(
                hamburgerMenuItemModelObj.mysubscriptionTxt,
                style: CustomTextStyles.titleMediumMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
