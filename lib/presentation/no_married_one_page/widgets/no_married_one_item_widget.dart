import '../models/no_married_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class NoMarriedOneItemWidget extends StatelessWidget {
  NoMarriedOneItemWidget(
    this.noMarriedOneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NoMarriedOneItemModel noMarriedOneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(53),
      width: getHorizontalSize(330),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: getMargin(
                top: 9,
              ),
              padding: getPadding(
                left: 10,
                top: 7,
                right: 10,
                bottom: 7,
              ),
              decoration: AppDecoration.outlineOrange5001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 6,
                      top: 3,
                    ),
                    child: Text(
                      noMarriedOneItemModelObj.areyoumarriedTxt,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 2,
                    ),
                    padding: getPadding(
                      left: 6,
                      top: 2,
                      right: 6,
                      bottom: 2,
                    ),
                    decoration: AppDecoration.outlineOrange500.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          noMarriedOneItemModelObj.noTxt,
                          style: theme.textTheme.titleSmall,
                        ),
                        Container(
                          height: getSize(18),
                          width: getSize(18),
                          margin: getMargin(
                            left: 6,
                            top: 2,
                            bottom: 2,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.orange500,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(3),
                            ),
                          ),
                        ),
                      ],
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
                top: 8,
              ),
              child: SizedBox(
                width: getHorizontalSize(82),
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
                noMarriedOneItemModelObj.maritalstatusTxt,
                style: theme.textTheme.labelMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
