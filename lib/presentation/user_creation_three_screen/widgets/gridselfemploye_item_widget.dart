import '../models/gridselfemploye_item_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class GridselfemployeItemWidget extends StatelessWidget {
  GridselfemployeItemWidget(
    this.gridselfemployeItemModelObj, {
    Key? key,
    this.onTapColumnselfemplo,
  }) : super(
          key: key,
        );

  GridselfemployeItemModel gridselfemployeItemModelObj;

  VoidCallback? onTapColumnselfemplo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapColumnselfemplo?.call();
      },
      child: Container(
        padding: getPadding(
          left: 7,
          top: 9,
          right: 7,
          bottom: 9,
        ),
        decoration: AppDecoration.outlineGray300.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIconButton(
              height: getSize(40),
              width: getSize(40),
              margin: getMargin(
                top: 2,
              ),
              padding: getPadding(
                all: 8,
              ),
              decoration: IconButtonStyleHelper.outlineOnPrimary,
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup67,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 15,
              ),
              child: Text(
                gridselfemployeItemModelObj.selfemployedbusTxt,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.labelLargeBluegray80001Medium.copyWith(
                  height: 1.33,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
