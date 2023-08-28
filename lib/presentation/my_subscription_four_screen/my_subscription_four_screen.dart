import 'bloc/my_subscription_four_bloc.dart';import 'models/my_subscription_four_model.dart';import 'package:flutter/material.dart';import 'package:samruddhi_s_application1/core/app_export.dart';import 'package:samruddhi_s_application1/widgets/app_bar/appbar_image.dart';import 'package:samruddhi_s_application1/widgets/app_bar/appbar_subtitle_2.dart';import 'package:samruddhi_s_application1/widgets/app_bar/appbar_title.dart';import 'package:samruddhi_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:samruddhi_s_application1/widgets/custom_elevated_button.dart';class MySubscriptionFourScreen extends StatelessWidget {const MySubscriptionFourScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<MySubscriptionFourBloc>(create: (context) => MySubscriptionFourBloc(MySubscriptionFourState(mySubscriptionFourModelObj: MySubscriptionFourModel()))..add(MySubscriptionFourInitialEvent()), child: MySubscriptionFourScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<MySubscriptionFourBloc, MySubscriptionFourState>(builder: (context, state) {return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimary.withOpacity(1), appBar: CustomAppBar(leadingWidth: getHorizontalSize(35), leading: AppbarImage(imagePath: ImageConstant.imgLeftarrow1, margin: getMargin(left: 15, top: 10, bottom: 10), onTap: () {onTapLeftarrowone(context);}), centerTitle: true, title: AppbarTitle(text: "lbl_my_subscription".tr), actions: [Container(margin: getMargin(left: 15, top: 13, right: 15, bottom: 13), padding: getPadding(left: 2, right: 2), decoration: AppDecoration.outlineOrange5003.copyWith(borderRadius: BorderRadiusStyle.roundedBorder2), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(height: getSize(10), width: getSize(10), margin: getMargin(top: 2, bottom: 2), decoration: BoxDecoration(color: appTheme.orange500, borderRadius: BorderRadius.circular(getHorizontalSize(2)))), AppbarSubtitle2(text: "lbl5".tr.toUpperCase(), margin: getMargin(left: 2, top: 1, right: 2))]))], styleType: Style.bgFill), body: Container(width: double.maxFinite, padding: getPadding(left: 30, top: 60, right: 30, bottom: 60), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgGroup222, height: getSize(130), width: getSize(130)), Padding(padding: getPadding(top: 35), child: Text("msg_congratulations".tr, style: CustomTextStyles.headlineLargeBluegray80001)), Container(margin: getMargin(top: 28), padding: getPadding(left: 51, top: 5, right: 51, bottom: 5), decoration: AppDecoration.fillGreen.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(top: 2), child: Text("msg_you_can_use_the3".tr, style: CustomTextStyles.titleSmallOnPrimary_1)), RichText(text: TextSpan(children: [TextSpan(text: "lbl_free2".tr, style: CustomTextStyles.headlineSmallBold_1), TextSpan(text: "lbl_till_07_06_2026".tr, style: CustomTextStyles.titleSmallOnPrimaryBold)]), textAlign: TextAlign.left)])), Container(width: getHorizontalSize(294), margin: getMargin(left: 2, top: 21, right: 3), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_after_that_if_you4".tr, style: CustomTextStyles.bodyMedium14_1.copyWith(height: 1.43)), TextSpan(text: "lbl_50".tr, style: theme.textTheme.titleLarge), TextSpan(text: "msg_per_month_plus_applicable".tr, style: CustomTextStyles.bodyMedium14_1)]), textAlign: TextAlign.center)), Container(margin: getMargin(top: 25, bottom: 5), decoration: AppDecoration.outlinePrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [CustomElevatedButton(height: getVerticalSize(30), text: "lbl_we_are_accepted".tr, buttonStyle: CustomButtonStyles.fillPink, buttonTextStyle: CustomTextStyles.titleMediumOnPrimary), Padding(padding: getPadding(top: 11), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [GestureDetector(onTap: () {onTapTxtAgreement(context);}, child: Text("lbl_agreement2".tr, style: CustomTextStyles.titleSmallPink600)), GestureDetector(onTap: () {onTapTxtTermAndConditio(context);}, child: Padding(padding: getPadding(left: 3), child: Text("msg_terms_conditions2".tr, style: CustomTextStyles.titleSmallPink600)))])), Padding(padding: getPadding(left: 21, right: 21, bottom: 11), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [GestureDetector(onTap: () {onTapTxtPrivacypolicy(context);}, child: Text("lbl_privacy_policy3".tr, style: CustomTextStyles.titleSmallPink600)), GestureDetector(onTap: () {onTapTxtConfidentiality(context);}, child: Padding(padding: getPadding(left: 3), child: Text("msg_confidentiality".tr, style: CustomTextStyles.titleSmallPink600)))]))]))]))));}); } 
/// Navigates to the dashboardScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the dashboardScreen.
onTapLeftarrowone(BuildContext context) { NavigatorService.pushNamed(AppRoutes.dashboardScreen, ); } 
/// Navigates to the agreementScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the agreementScreen.
onTapTxtAgreement(BuildContext context) { NavigatorService.pushNamed(AppRoutes.agreementScreen, ); } 
/// Navigates to the termsConditionsScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the termsConditionsScreen.
onTapTxtTermAndConditio(BuildContext context) { NavigatorService.pushNamed(AppRoutes.termsConditionsScreen, ); } 
/// Navigates to the privacyScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the privacyScreen.
onTapTxtPrivacypolicy(BuildContext context) { NavigatorService.pushNamed(AppRoutes.privacyScreen, ); } 
/// Navigates to the confidentialityScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the confidentialityScreen.
onTapTxtConfidentiality(BuildContext context) { NavigatorService.pushNamed(AppRoutes.confidentialityScreen, ); } 
 }
