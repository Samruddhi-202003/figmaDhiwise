import '../models/monitoring_item_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class MonitoringItemWidget extends StatelessWidget {
  MonitoringItemWidget(
    this.monitoringItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MonitoringItemModel monitoringItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(36),
      width: getHorizontalSize(330),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CustomTextFormField(
            width: getHorizontalSize(302),
            controller: monitoringItemModelObj.group744Controller,
            hintText: "msg_as_indians_our2".tr,
            hintStyle: CustomTextStyles.titleSmallBluegray80001Medium,
            alignment: Alignment.centerRight,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: getPadding(
                left: 13,
                top: 1,
                right: 13,
                bottom: 1,
              ),
              decoration: AppDecoration.outlinePrimary1.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder20,
              ),
              child: Text(
                monitoringItemModelObj.group743Txt,
                style: CustomTextStyles.titleLargePrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
