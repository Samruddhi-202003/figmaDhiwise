import '../models/loan_item_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class LoanItemWidget extends StatelessWidget {
  LoanItemWidget(
    this.loanItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LoanItemModel loanItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(52),
      width: getHorizontalSize(300),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: getMargin(
                top: 8,
              ),
              padding: getPadding(
                left: 15,
                top: 8,
                right: 15,
                bottom: 8,
              ),
              decoration: AppDecoration.outlineOrange5001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 1,
                    ),
                    child: Text(
                      loanItemModelObj.carloanTxt,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgCalendar1,
                    height: getVerticalSize(11),
                    width: getHorizontalSize(12),
                    margin: getMargin(
                      top: 7,
                      right: 1,
                      bottom: 8,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: getPadding(
                top: 7,
              ),
              child: SizedBox(
                width: getHorizontalSize(76),
                child: Divider(
                  indent: getHorizontalSize(10),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: getPadding(
                left: 15,
              ),
              child: Text(
                loanItemModelObj.typeofloanTxt,
                style: theme.textTheme.labelMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
