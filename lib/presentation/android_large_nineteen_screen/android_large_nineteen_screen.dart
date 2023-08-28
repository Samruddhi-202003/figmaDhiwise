import 'bloc/android_large_nineteen_bloc.dart';
import 'models/android_large_nineteen_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/custom_elevated_button.dart';

class AndroidLargeNineteenScreen extends StatelessWidget {
  const AndroidLargeNineteenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeNineteenBloc>(
      create: (context) => AndroidLargeNineteenBloc(AndroidLargeNineteenState(
        androidLargeNineteenModelObj: AndroidLargeNineteenModel(),
      ))
        ..add(AndroidLargeNineteenInitialEvent()),
      child: AndroidLargeNineteenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AndroidLargeNineteenBloc, AndroidLargeNineteenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.blueGray80001.withOpacity(0.7),
            body: Container(
              width: double.maxFinite,
              padding: getPadding(
                left: 15,
                right: 15,
              ),
              child: Container(
                padding: getPadding(
                  left: 10,
                  top: 8,
                  right: 10,
                  bottom: 8,
                ),
                decoration: AppDecoration.fillOnPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "msg_download_statement".tr,
                            style:
                                CustomTextStyles.titleMediumBlack90001Medium18,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgClose1,
                            height: getSize(20),
                            width: getSize(20),
                            margin: getMargin(
                              top: 3,
                              bottom: 5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(281),
                      margin: getMargin(
                        left: 10,
                        top: 11,
                        right: 18,
                      ),
                      child: Text(
                        "msg_lorem_ipsum_is_simply".tr,
                        maxLines: 9,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallBlack90001.copyWith(
                          height: 1.33,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 10,
                        top: 20,
                        right: 10,
                        bottom: 11,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomElevatedButton(
                            width: getHorizontalSize(140),
                            text: "lbl_confirm".tr.toUpperCase(),
                            buttonStyle: CustomButtonStyles.fillGray,
                            buttonTextStyle:
                                CustomTextStyles.titleSmallBluegray80001_2,
                          ),
                          CustomElevatedButton(
                            width: getHorizontalSize(140),
                            text: "lbl_cancel2".tr.toUpperCase(),
                            margin: getMargin(
                              left: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
