import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:samruddhi_s_application1/widgets/custom_elevated_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => LoginBloc(LoginState(
        loginModelObj: LoginModel(),
      ))
        ..add(LoginInitialEvent()),
      child: LoginScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: getVerticalSize(612),
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgBgplain1,
                          height: getVerticalSize(612),
                          width: getHorizontalSize(360),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: getPadding(
                              left: 15,
                              top: 4,
                              right: 15,
                              bottom: 85,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomAppBar(
                                  height: getVerticalSize(29),
                                  leadingWidth: getHorizontalSize(35),
                                  leading: AppbarImage(
                                    imagePath: ImageConstant.imgRightarrow11,
                                    margin: getMargin(
                                      left: 15,
                                      top: 5,
                                      bottom: 3,
                                    ),
                                  ),
                                  centerTitle: true,
                                  title: AppbarTitle(
                                    text: "lbl_account_created".tr,
                                  ),
                                  actions: [
                                    Container(
                                      margin: getMargin(
                                        left: 15,
                                        top: 8,
                                        right: 15,
                                        bottom: 6,
                                      ),
                                      padding: getPadding(
                                        left: 2,
                                        right: 2,
                                      ),
                                      decoration: AppDecoration.outlineOrange500
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder2,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: getSize(10),
                                            width: getSize(10),
                                            margin: getMargin(
                                              top: 2,
                                              bottom: 2,
                                            ),
                                            decoration: BoxDecoration(
                                              color: appTheme.orange500,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(2),
                                              ),
                                            ),
                                          ),
                                          AppbarSubtitle2(
                                            text: "lbl7".tr.toUpperCase(),
                                            margin: getMargin(
                                              left: 4,
                                              right: 5,
                                              bottom: 1,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                CustomImageView(
                                  imagePath: ImageConstant.imgLogin1174x220,
                                  height: getVerticalSize(174),
                                  width: getHorizontalSize(220),
                                  alignment: Alignment.center,
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 25,
                                    top: 44,
                                  ),
                                  child: Text(
                                    "lbl_hi_there".tr,
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(226),
                                  margin: getMargin(
                                    left: 25,
                                    top: 7,
                                  ),
                                  child: Text(
                                    "msg_complete_your_profile".tr,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.labelLargeGray600
                                        .copyWith(
                                      height: 1.67,
                                    ),
                                  ),
                                ),
                                CustomElevatedButton(
                                  text: "msg_complete_profile".tr.toUpperCase(),
                                  margin: getMargin(
                                    left: 25,
                                    top: 36,
                                    right: 25,
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgBgplain2,
                    height: getVerticalSize(158),
                    width: getHorizontalSize(360),
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
