import '../models/user_creation1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UserCreation1ItemWidget extends StatelessWidget {
  UserCreation1ItemWidget(
    this.userCreation1ItemModelObj, {
    Key? key,
    this.onTapColumn,
  }) : super(
          key: key,
        );

  UserCreation1ItemModel userCreation1ItemModelObj;

  VoidCallback? onTapColumn;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapColumn?.call();
      },
      child: Container(
        padding: getPadding(
          left: 18,
          top: 10,
          right: 18,
          bottom: 10,
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
                top: 13,
              ),
              child: Text(
                userCreation1ItemModelObj.Txt,
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
