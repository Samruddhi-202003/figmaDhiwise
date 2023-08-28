import '../models/transaction_item_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class TransactionItemWidget extends StatelessWidget {
  TransactionItemWidget(
    this.transactionItemModelObj, {
    Key? key,
    this.onTapColumninsurance,
  }) : super(
          key: key,
        );

  TransactionItemModel transactionItemModelObj;

  VoidCallback? onTapColumninsurance;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapColumninsurance?.call();
      },
      child: Container(
        padding: getPadding(
          left: 28,
          top: 25,
          right: 28,
          bottom: 25,
        ),
        decoration: AppDecoration.outlineGray3007.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGoal170x70,
              height: getSize(70),
              width: getSize(70),
              margin: getMargin(
                top: 4,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 26,
              ),
              child: Text(
                transactionItemModelObj.insurancestwoTxt,
                style: theme.textTheme.titleLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
