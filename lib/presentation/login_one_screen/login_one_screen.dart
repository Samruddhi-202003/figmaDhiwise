import 'bloc/login_one_bloc.dart';import 'models/login_one_model.dart';import 'package:flutter/material.dart';import 'package:samruddhi_s_application1/core/app_export.dart';import 'package:samruddhi_s_application1/widgets/app_bar/appbar_image.dart';import 'package:samruddhi_s_application1/widgets/app_bar/appbar_subtitle_2.dart';import 'package:samruddhi_s_application1/widgets/app_bar/appbar_title.dart';import 'package:samruddhi_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:samruddhi_s_application1/widgets/custom_elevated_button.dart';class LoginOneScreen extends StatelessWidget {const LoginOneScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<LoginOneBloc>(create: (context) => LoginOneBloc(LoginOneState(loginOneModelObj: LoginOneModel()))..add(LoginOneInitialEvent()), child: LoginOneScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<LoginOneBloc, LoginOneState>(builder: (context, state) {return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimary.withOpacity(1), body: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [SizedBox(height: getVerticalSize(612), width: double.maxFinite, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgBgplain1, height: getVerticalSize(612), width: getHorizontalSize(360), alignment: Alignment.center), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 15, top: 5, right: 15, bottom: 5), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [CustomAppBar(height: getVerticalSize(29), leadingWidth: getHorizontalSize(35), leading: AppbarImage(imagePath: ImageConstant.imgRightarrow11, margin: getMargin(left: 15, top: 4, bottom: 4), onTap: () {onTapRightarroweleve(context);}), centerTitle: true, title: AppbarTitle(text: "lbl_login".tr), actions: [Container(margin: getMargin(left: 15, top: 7, right: 15, bottom: 7), padding: getPadding(left: 2, right: 2), decoration: AppDecoration.outlineOrange500.copyWith(borderRadius: BorderRadiusStyle.roundedBorder2), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(height: getSize(10), width: getSize(10), margin: getMargin(top: 2, bottom: 2), decoration: BoxDecoration(color: appTheme.orange500, borderRadius: BorderRadius.circular(getHorizontalSize(2)))), AppbarSubtitle2(text: "lbl7".tr.toUpperCase(), margin: getMargin(left: 4, right: 5, bottom: 1))]))]), Spacer(), CustomImageView(imagePath: ImageConstant.imgLogin1, height: getVerticalSize(179), width: getHorizontalSize(220)), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 25, top: 39), child: Text("msg_enter_your_mobile".tr, style: theme.textTheme.titleLarge))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 23, top: 6), child: Text("msg_we_will_send_you".tr, style: CustomTextStyles.labelLargeGray600))), Container(height: getVerticalSize(58), width: getHorizontalSize(280), margin: getMargin(top: 29), child: Stack(alignment: Alignment.topLeft, children: [Align(alignment: Alignment.bottomCenter, child: Container(margin: getMargin(top: 8), padding: getPadding(left: 16, top: 10, right: 16, bottom: 10), decoration: AppDecoration.outlineOrange5001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_91_9932985137".tr, style: CustomTextStyles.titleMediumBluegray800), CustomImageView(imagePath: ImageConstant.imgCheck1, height: getSize(14), width: getSize(14), margin: getMargin(top: 7, bottom: 7))]))), Align(alignment: Alignment.topLeft, child: Padding(padding: getPadding(top: 7), child: SizedBox(width: getHorizontalSize(90), child: Divider(indent: getHorizontalSize(10))))), Align(alignment: Alignment.topLeft, child: Padding(padding: getPadding(left: 18), child: Text("lbl_phone_number".tr, style: CustomTextStyles.labelMediumGray600)))])), Padding(padding: getPadding(top: 4), child: Text("msg_enter_10_digit_valid".tr, style: CustomTextStyles.bodySmallPrimary)), CustomElevatedButton(text: "lbl_send_code".tr.toUpperCase(), margin: getMargin(left: 25, top: 21, right: 25), onTap: () {onTapSendcode(context);})])))])), CustomImageView(imagePath: ImageConstant.imgBgplain2, height: getVerticalSize(158), width: getHorizontalSize(360))]))));}); } 
/// Navigates to the languageScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the languageScreen.
onTapRightarroweleve(BuildContext context) { NavigatorService.pushNamed(AppRoutes.languageScreen, ); } 
/// Navigates to the otpScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the otpScreen.
onTapSendcode(BuildContext context) { NavigatorService.pushNamed(AppRoutes.otpScreen, ); } 
 }
