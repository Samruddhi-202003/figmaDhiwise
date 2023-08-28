import '../models/number_details_item_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class NumberDetailsItemWidget extends StatelessWidget {
  NumberDetailsItemWidget(
    this.numberDetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NumberDetailsItemModel numberDetailsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Text(
      numberDetailsItemModelObj.currentbudgetfoTxt,
      style: theme.textTheme.labelMedium,
    );
  }
}
