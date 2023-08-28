import '../models/fianncial_plan_item_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class FianncialPlanItemWidget extends StatelessWidget {
  FianncialPlanItemWidget(
    this.fianncialPlanItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FianncialPlanItemModel fianncialPlanItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlinePink.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: getPadding(
              left: 10,
              top: 3,
              right: 10,
              bottom: 3,
            ),
            decoration: AppDecoration.fillPink,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgAccount12,
                  height: getSize(14),
                  width: getSize(14),
                  margin: getMargin(
                    top: 4,
                    bottom: 4,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 5,
                  ),
                  child: Text(
                    fianncialPlanItemModelObj.mylovingwiferitTxt,
                    style: CustomTextStyles.titleSmallOnPrimary_1,
                  ),
                ),
                Container(
                  height: getSize(20),
                  width: getSize(20),
                  margin: getMargin(
                    left: 10,
                    top: 1,
                    bottom: 1,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: getSize(20),
                          width: getSize(20),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimary.withOpacity(1),
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(3),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          fianncialPlanItemModelObj.thirtytwoTxt,
                          style: CustomTextStyles.labelLargeBluegray80001_1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: getVerticalSize(55),
            width: getHorizontalSize(313),
            margin: getMargin(
              top: 8,
              bottom: 6,
            ),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    fianncialPlanItemModelObj.descriptionTxt,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallBluegray8000112.copyWith(
                      height: 1.33,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: getSize(18),
                    width: getSize(18),
                    padding: getPadding(
                      all: 4,
                    ),
                    decoration: AppDecoration.fillBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSound1,
                      height: getSize(9),
                      width: getSize(9),
                      alignment: Alignment.center,
                    ),
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
