import 'bloc/privacy_bloc.dart';
import 'models/privacy_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_image_2.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/custom_app_bar.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PrivacyBloc>(
      create: (context) => PrivacyBloc(PrivacyState(
        privacyModelObj: PrivacyModel(),
      ))
        ..add(PrivacyInitialEvent()),
      child: PrivacyScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<PrivacyBloc, PrivacyState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
            appBar: CustomAppBar(
              height: getVerticalSize(44),
              title: AppbarSubtitle(
                text: "lbl_privacy_policy".tr,
                margin: getMargin(
                  left: 20,
                ),
              ),
              actions: [
                AppbarImage2(
                  imagePath: ImageConstant.imgClose1,
                  margin: getMargin(
                    left: 10,
                    top: 5,
                    right: 10,
                    bottom: 10,
                  ),
                ),
              ],
            ),
            body: Container(
              width: getHorizontalSize(340),
              padding: getPadding(
                left: 20,
                right: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: getHorizontalSize(300),
                    child: Text(
                      "msg_lorem_ipsum_is_simply3".tr,
                      maxLines: 11,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.justify,
                      style: CustomTextStyles.bodySmallBluegray8000112.copyWith(
                        height: 1.33,
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(295),
                    margin: getMargin(
                      top: 12,
                      bottom: 5,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_why_do_we_use_it".tr,
                            style: CustomTextStyles.titleMediumBlack90001,
                          ),
                          TextSpan(
                            text: "msg_there_are_many_variations".tr,
                            style: CustomTextStyles.bodySmallBluegray8000112_1
                                .copyWith(
                              height: 1.33,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
