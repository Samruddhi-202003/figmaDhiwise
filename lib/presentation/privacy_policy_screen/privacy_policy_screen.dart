import 'bloc/privacy_policy_bloc.dart';import 'models/privacy_policy_model.dart';import 'package:flutter/material.dart';import 'package:samruddhi_s_application1/core/app_export.dart';import 'package:samruddhi_s_application1/widgets/app_bar/appbar_image.dart';import 'package:samruddhi_s_application1/widgets/app_bar/appbar_subtitle_2.dart';import 'package:samruddhi_s_application1/widgets/app_bar/appbar_title.dart';import 'package:samruddhi_s_application1/widgets/app_bar/custom_app_bar.dart';class PrivacyPolicyScreen extends StatelessWidget {const PrivacyPolicyScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<PrivacyPolicyBloc>(create: (context) => PrivacyPolicyBloc(PrivacyPolicyState(privacyPolicyModelObj: PrivacyPolicyModel()))..add(PrivacyPolicyInitialEvent()), child: PrivacyPolicyScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<PrivacyPolicyBloc, PrivacyPolicyState>(builder: (context, state) {return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimary.withOpacity(1), appBar: CustomAppBar(leadingWidth: getHorizontalSize(35), leading: AppbarImage(imagePath: ImageConstant.imgLeftarrow1, margin: getMargin(left: 15, top: 10, bottom: 10), onTap: () {onTapLeftarrowone(context);}), centerTitle: true, title: AppbarTitle(text: "lbl_privacy_policy".tr), actions: [Container(margin: getMargin(left: 15, top: 13, right: 15, bottom: 13), padding: getPadding(left: 2, right: 2), decoration: AppDecoration.outlineOrange5003.copyWith(borderRadius: BorderRadiusStyle.roundedBorder2), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(height: getSize(10), width: getSize(10), margin: getMargin(top: 2, bottom: 2), decoration: BoxDecoration(color: appTheme.orange500, borderRadius: BorderRadius.circular(getHorizontalSize(2)))), AppbarSubtitle2(text: "lbl5".tr.toUpperCase(), margin: getMargin(left: 2, top: 1, right: 2))]))], styleType: Style.bgFill), body: Container(width: double.maxFinite, padding: getPadding(left: 15, top: 9, right: 15, bottom: 9), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [SizedBox(width: getHorizontalSize(330), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_privacy_policy2".tr, style: CustomTextStyles.titleMediumBlack90001), TextSpan(text: "msg_lorem_ipsum_is_simply3".tr, style: CustomTextStyles.bodySmallBluegray8000112_1)]), textAlign: TextAlign.justify)), Container(width: getHorizontalSize(320), margin: getMargin(top: 7, right: 9, bottom: 5), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_why_do_we_use_it".tr, style: CustomTextStyles.titleMediumBlack90001), TextSpan(text: "msg_there_are_many_variations".tr, style: CustomTextStyles.bodySmallBluegray8000112_1.copyWith(height: 1.33))]), textAlign: TextAlign.left))]))));}); } 
/// Navigates to the dashboardScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the dashboardScreen.
onTapLeftarrowone(BuildContext context) { NavigatorService.pushNamed(AppRoutes.dashboardScreen, ); } 
 }
