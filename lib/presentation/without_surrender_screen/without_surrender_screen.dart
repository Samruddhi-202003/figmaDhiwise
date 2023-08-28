import 'bloc/without_surrender_bloc.dart';import 'models/without_surrender_model.dart';import 'package:flutter/material.dart';import 'package:samruddhi_s_application1/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/with_surrender_page/with_surrender_page.dart';import 'package:samruddhi_s_application1/widgets/app_bar/appbar_image.dart';import 'package:samruddhi_s_application1/widgets/app_bar/appbar_subtitle_2.dart';import 'package:samruddhi_s_application1/widgets/app_bar/appbar_title.dart';import 'package:samruddhi_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:samruddhi_s_application1/widgets/custom_bottom_app_bar.dart';import 'package:samruddhi_s_application1/widgets/custom_elevated_button.dart';import 'package:samruddhi_s_application1/widgets/custom_outlined_button.dart';import 'package:samruddhi_s_application1/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class WithoutSurrenderScreen extends StatelessWidget {WithoutSurrenderScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<WithoutSurrenderBloc>(create: (context) => WithoutSurrenderBloc(WithoutSurrenderState(withoutSurrenderModelObj: WithoutSurrenderModel()))..add(WithoutSurrenderInitialEvent()), child: WithoutSurrenderScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimary.withOpacity(1), resizeToAvoidBottomInset: false, appBar: CustomAppBar(leadingWidth: getHorizontalSize(35), leading: AppbarImage(imagePath: ImageConstant.imgLeftarrow1, margin: getMargin(left: 15, top: 10, bottom: 10), onTap: () {onTapLeftarrowone(context);}), centerTitle: true, title: AppbarTitle(text: "msg_without_surrender".tr), actions: [Container(margin: getMargin(left: 15, top: 13, right: 15, bottom: 13), padding: getPadding(left: 2, right: 2), decoration: AppDecoration.outlineOrange5003.copyWith(borderRadius: BorderRadiusStyle.roundedBorder2), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(height: getSize(10), width: getSize(10), margin: getMargin(top: 2, bottom: 2), decoration: BoxDecoration(color: appTheme.orange500, borderRadius: BorderRadius.circular(getHorizontalSize(2)))), AppbarSubtitle2(text: "lbl5".tr.toUpperCase(), margin: getMargin(left: 2, top: 1, right: 2))]))], styleType: Style.bgFill), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: getPadding(top: 5), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 15, right: 15), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomElevatedButton(height: getVerticalSize(28), width: getHorizontalSize(160), text: "lbl_with_surrender".tr, buttonStyle: CustomButtonStyles.fillGray, buttonTextStyle: theme.textTheme.bodyMedium!, onTap: () {onTapWithsurrender(context);}), Container(margin: getMargin(left: 10), padding: getPadding(left: 28, top: 2, right: 28, bottom: 2), decoration: AppDecoration.fillPrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Text("msg_without_surrender".tr, style: CustomTextStyles.bodyMediumOnPrimary))])), Container(width: double.maxFinite, margin: getMargin(top: 5), padding: getPadding(left: 35, top: 4, right: 35, bottom: 4), decoration: AppDecoration.fillPrimary, child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: getPadding(left: 13, top: 4, bottom: 5), child: Text("lbl_our_goals".tr, style: CustomTextStyles.labelMediumOnPrimary_1)), Spacer(), Padding(padding: getPadding(top: 5, bottom: 4), child: Text("lbl_target_amount".tr, style: CustomTextStyles.labelMediumOnPrimary_1)), Container(width: getHorizontalSize(49), margin: getMargin(left: 44, bottom: 1), child: Text("msg_monthly_investment2".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.labelMediumOnPrimary_1.copyWith(height: 1.20)))])), Container(width: double.maxFinite, padding: getPadding(left: 15, top: 9, right: 15, bottom: 9), decoration: AppDecoration.outlineGray3003, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgClock, height: getSize(30), width: getSize(30), margin: getMargin(top: 1, bottom: 1)), Container(width: getHorizontalSize(51), margin: getMargin(left: 10, bottom: 1), child: Text("msg_term_life_insurance".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.labelLargeBluegray80001_1.copyWith(height: 1.17))), Container(width: getHorizontalSize(90), margin: getMargin(left: 43, top: 1, bottom: 1), padding: getPadding(left: 13, top: 1, right: 13, bottom: 1), decoration: AppDecoration.fillOrange.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_rs".tr, style: theme.textTheme.labelLarge), TextSpan(text: "lbl_25".tr, style: theme.textTheme.headlineSmall), TextSpan(text: "lbl_lakh".tr, style: theme.textTheme.labelLarge)]), textAlign: TextAlign.left)), CustomOutlinedButton(width: getHorizontalSize(90), text: "lbl_rs_4802".tr, margin: getMargin(left: 15, top: 1, bottom: 1), buttonStyle: CustomButtonStyles.outlineBlueGray)])), Container(width: double.maxFinite, padding: getPadding(left: 15, top: 9, right: 15, bottom: 9), decoration: AppDecoration.outlineGray3004, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgClock, height: getSize(30), width: getSize(30), margin: getMargin(top: 1, bottom: 1)), Container(width: getHorizontalSize(59), margin: getMargin(left: 10, bottom: 1), child: Text("lbl_emergency_fund".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.labelLargeBluegray80001_1.copyWith(height: 1.17))), Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: getMargin(left: 35, top: 1, bottom: 1), color: appTheme.orange500, shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder5), child: Container(height: getVerticalSize(30), width: getHorizontalSize(90), decoration: AppDecoration.fillOrange.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.centerRight, child: Container(height: getVerticalSize(30), width: getHorizontalSize(36), decoration: BoxDecoration(color: appTheme.green70001, borderRadius: BorderRadius.horizontal(right: Radius.circular(getHorizontalSize(5)))))), Align(alignment: Alignment.topCenter, child: Padding(padding: getPadding(top: 1), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_rs".tr, style: theme.textTheme.labelLarge), TextSpan(text: "lbl_90".tr, style: theme.textTheme.headlineSmall), TextSpan(text: "lbl_k".tr, style: theme.textTheme.labelLarge)]), textAlign: TextAlign.left)))]))), CustomOutlinedButton(width: getHorizontalSize(90), text: "lbl_rs_1300".tr, margin: getMargin(left: 15, top: 1, bottom: 1))])), Container(width: double.maxFinite, padding: getPadding(left: 15, top: 9, right: 15, bottom: 9), decoration: AppDecoration.outlineGray3006, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgProfile, height: getSize(30), width: getSize(30), margin: getMargin(top: 1, bottom: 1)), Container(width: getHorizontalSize(69), margin: getMargin(left: 10), child: Text("msg_priyanka_s_higher2".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.labelLargeBluegray80001_1.copyWith(height: 1.17))), Container(height: getVerticalSize(30), width: getHorizontalSize(90), margin: getMargin(left: 25, top: 1, bottom: 1), child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.center, child: Container(height: getVerticalSize(30), width: getHorizontalSize(90), decoration: BoxDecoration(color: appTheme.orange500, borderRadius: BorderRadius.circular(getHorizontalSize(5))))), Align(alignment: Alignment.topCenter, child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_rs".tr, style: theme.textTheme.labelLarge), TextSpan(text: "lbl_3_8".tr, style: theme.textTheme.headlineSmall), TextSpan(text: "lbl_lakh".tr, style: theme.textTheme.labelLarge)]), textAlign: TextAlign.left))])), CustomOutlinedButton(width: getHorizontalSize(90), text: "lbl_rs_400".tr, margin: getMargin(left: 15, top: 1, bottom: 1))])), Container(width: double.maxFinite, decoration: AppDecoration.fillGray300, child: Row(children: [Container(padding: getPadding(left: 15, top: 1, right: 15, bottom: 1), decoration: AppDecoration.fillBlueGray, child: Text("lbl_changes2".tr, style: theme.textTheme.bodySmall)), Padding(padding: getPadding(left: 10), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_loan_rs".tr, style: CustomTextStyles.labelMediumBluegray80001SemiBold), TextSpan(text: "lbl_3_05".tr, style: theme.textTheme.titleMedium), TextSpan(text: "msg_lakh_down_payment".tr, style: CustomTextStyles.labelMediumBluegray80001SemiBold), TextSpan(text: "lbl_75".tr, style: theme.textTheme.titleMedium), TextSpan(text: "lbl_k2".tr, style: CustomTextStyles.labelMediumBluegray80001SemiBold)]), textAlign: TextAlign.left))])), Container(width: double.maxFinite, padding: getPadding(left: 15, top: 9, right: 15, bottom: 9), decoration: AppDecoration.outlineGray3004, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(height: getSize(30), width: getSize(30), padding: getPadding(all: 1), decoration: AppDecoration.outlineBlack900014.copyWith(borderRadius: BorderRadiusStyle.circleBorder15), child: CustomImageView(imagePath: ImageConstant.imgEllipse272, height: getSize(27), width: getSize(27), radius: BorderRadius.circular(getHorizontalSize(13)), alignment: Alignment.center)), Container(width: getHorizontalSize(69), margin: getMargin(left: 10), child: Text("msg_pritam_s_higher2".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.labelLargeBluegray80001_1.copyWith(height: 1.17))), Container(width: getHorizontalSize(94), margin: getMargin(left: 23, top: 1, bottom: 1), padding: getPadding(left: 11, top: 1, right: 11, bottom: 1), decoration: AppDecoration.fillOrange.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_rs".tr, style: theme.textTheme.labelLarge), TextSpan(text: "lbl_4_8".tr, style: theme.textTheme.headlineSmall), TextSpan(text: "lbl_lakh".tr, style: theme.textTheme.labelLarge)]), textAlign: TextAlign.left)), Container(width: getHorizontalSize(90), margin: getMargin(left: 13, top: 1, bottom: 1), padding: getPadding(left: 23, top: 2, right: 23, bottom: 2), decoration: AppDecoration.outlineBluegray80001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_rs".tr, style: CustomTextStyles.labelLargeBluegray80001), TextSpan(text: "lbl_300".tr, style: CustomTextStyles.titleMedium18)]), textAlign: TextAlign.left))])), Container(width: double.maxFinite, decoration: AppDecoration.fillGray300, child: Row(children: [Container(padding: getPadding(left: 15, top: 1, right: 15, bottom: 1), decoration: AppDecoration.fillBlueGray, child: Text("lbl_changes2".tr, style: theme.textTheme.bodySmall)), Padding(padding: getPadding(left: 10), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_loan_rs".tr, style: CustomTextStyles.labelMediumBluegray80001SemiBold), TextSpan(text: "lbl_3_84".tr, style: theme.textTheme.titleMedium), TextSpan(text: "msg_lakh_down_payment".tr, style: CustomTextStyles.labelMediumBluegray80001SemiBold), TextSpan(text: "lbl_96".tr, style: theme.textTheme.titleMedium), TextSpan(text: "lbl_k2".tr, style: CustomTextStyles.labelMediumBluegray80001SemiBold)]), textAlign: TextAlign.left))])), Container(padding: getPadding(left: 14, top: 9, right: 14, bottom: 9), decoration: AppDecoration.outlineGray3006, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(height: getSize(30), width: getSize(30), padding: getPadding(all: 1), decoration: AppDecoration.outlineBlack900014.copyWith(borderRadius: BorderRadiusStyle.circleBorder15), child: CustomImageView(imagePath: ImageConstant.imgEllipse2727x27, height: getSize(27), width: getSize(27), radius: BorderRadius.circular(getHorizontalSize(13)), alignment: Alignment.center)), Container(width: getHorizontalSize(53), margin: getMargin(left: 10), child: Text("msg_priyanka_s_marriage".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.labelLargeBluegray80001_1.copyWith(height: 1.17))), Container(width: getHorizontalSize(94), margin: getMargin(left: 39, top: 1, bottom: 1), padding: getPadding(left: 4, top: 1, right: 4, bottom: 1), decoration: AppDecoration.fillOrange.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_rs".tr, style: theme.textTheme.labelLarge), TextSpan(text: "lbl_8_08".tr, style: theme.textTheme.headlineSmall), TextSpan(text: "lbl_lakh".tr, style: theme.textTheme.labelLarge)]), textAlign: TextAlign.left)), Container(width: getHorizontalSize(90), margin: getMargin(left: 13, top: 1, bottom: 1), padding: getPadding(left: 23, top: 2, right: 23, bottom: 2), decoration: AppDecoration.outlineBluegray80001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_rs".tr, style: CustomTextStyles.labelLargeBluegray80001), TextSpan(text: "lbl_900".tr, style: CustomTextStyles.titleMedium18)]), textAlign: TextAlign.left))])), Container(decoration: AppDecoration.fillGray300, child: Row(children: [Container(padding: getPadding(left: 14, top: 1, right: 14, bottom: 1), decoration: AppDecoration.fillBlueGray, child: Text("lbl_changes2".tr, style: theme.textTheme.bodySmall)), Padding(padding: getPadding(left: 10), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_earlier_marriage2".tr, style: CustomTextStyles.labelMediumBluegray80001SemiBold), TextSpan(text: " "), TextSpan(text: "lbl_3".tr, style: theme.textTheme.titleMedium), TextSpan(text: "lbl_years".tr, style: CustomTextStyles.labelMediumBluegray80001SemiBold), TextSpan(text: "lbl_at".tr, style: CustomTextStyles.labelMediumBluegray80001SemiBold), TextSpan(text: "lbl_23".tr, style: theme.textTheme.titleMedium)]), textAlign: TextAlign.left))])), Container(width: double.maxFinite, padding: getPadding(left: 15, top: 9, right: 15, bottom: 9), decoration: AppDecoration.outlineGray3004, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(height: getSize(30), width: getSize(30), padding: getPadding(all: 1), decoration: AppDecoration.outlineBlack900014.copyWith(borderRadius: BorderRadiusStyle.circleBorder15), child: CustomImageView(imagePath: ImageConstant.imgEllipse273, height: getSize(27), width: getSize(27), radius: BorderRadius.circular(getHorizontalSize(13)), alignment: Alignment.center)), Container(width: getHorizontalSize(77), margin: getMargin(left: 10), child: Text("msg_retirement_with2".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.labelLargeBluegray80001_1.copyWith(height: 1.17))), Container(width: getHorizontalSize(94), margin: getMargin(left: 15, top: 1, bottom: 1), padding: getPadding(left: 15, top: 1, right: 15, bottom: 1), decoration: AppDecoration.fillOrange.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_rs".tr, style: theme.textTheme.labelLarge), TextSpan(text: "lbl_1_72".tr, style: theme.textTheme.headlineSmall), TextSpan(text: "lbl_cr".tr, style: theme.textTheme.labelLarge)]), textAlign: TextAlign.left)), Container(width: getHorizontalSize(90), margin: getMargin(left: 13, top: 1, bottom: 1), padding: getPadding(left: 20, top: 2, right: 20, bottom: 2), decoration: AppDecoration.outlineBluegray80001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_rs".tr, style: CustomTextStyles.labelLargeBluegray80001), TextSpan(text: "lbl_1200".tr, style: CustomTextStyles.titleMedium18)]), textAlign: TextAlign.left))])), Container(width: double.maxFinite, decoration: AppDecoration.fillGray300, child: Row(children: [Container(padding: getPadding(left: 15, top: 1, right: 15, bottom: 1), decoration: AppDecoration.fillBlueGray, child: Text("lbl_changes2".tr, style: theme.textTheme.bodySmall)), Padding(padding: getPadding(left: 10), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_earlier_retirement2".tr, style: CustomTextStyles.labelMediumBluegray80001SemiBold), TextSpan(text: " "), TextSpan(text: "lbl_22".tr, style: theme.textTheme.titleMedium), TextSpan(text: "lbl_years".tr, style: CustomTextStyles.labelMediumBluegray80001SemiBold), TextSpan(text: "lbl_at".tr, style: CustomTextStyles.labelMediumBluegray80001SemiBold), TextSpan(text: "lbl_63".tr, style: theme.textTheme.titleMedium)]), textAlign: TextAlign.left))])), Container(width: double.maxFinite, padding: getPadding(left: 15, top: 9, right: 15, bottom: 9), decoration: AppDecoration.outlineGray3006, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgClock, height: getSize(30), width: getSize(30), margin: getMargin(top: 1, bottom: 1)), Container(width: getHorizontalSize(51), margin: getMargin(left: 10, bottom: 1), child: Text("msg_health_insurance".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.labelLargeBluegray80001_1.copyWith(height: 1.17))), Container(width: getHorizontalSize(94), margin: getMargin(left: 41, top: 1, bottom: 1), padding: getPadding(left: 21, top: 1, right: 21, bottom: 1), decoration: AppDecoration.fillGreen.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_rs".tr, style: theme.textTheme.labelLarge), TextSpan(text: "lbl_3".tr, style: theme.textTheme.headlineSmall), TextSpan(text: "lbl_lakh".tr, style: theme.textTheme.labelLarge)]), textAlign: TextAlign.left)), CustomOutlinedButton(width: getHorizontalSize(90), text: "lbl_rs_3502".tr, margin: getMargin(left: 13, top: 1, bottom: 1))])), Container(width: double.maxFinite, padding: getPadding(left: 15, top: 11, right: 15, bottom: 11), decoration: AppDecoration.outlineGray3004, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgClockOrange500, height: getSize(30), width: getSize(30)), Padding(padding: getPadding(left: 10, top: 3, bottom: 6), child: Text("lbl_life_insurance2".tr, style: CustomTextStyles.labelLargeBluegray80001_1)), CustomElevatedButton(height: getVerticalSize(30), width: getHorizontalSize(94), text: "lbl_rs_2lakh".tr, margin: getMargin(left: 19), buttonStyle: CustomButtonStyles.fillOrange, buttonTextStyle: CustomTextStyles.titleMediumOnPrimary), CustomOutlinedButton(width: getHorizontalSize(90), text: "lbl_rs_833".tr, margin: getMargin(left: 13))])), Container(margin: getMargin(left: 15, top: 15, right: 15), decoration: AppDecoration.outlineGray3005.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Container(height: getVerticalSize(31), width: getHorizontalSize(300), margin: getMargin(top: 4), child: Stack(alignment: Alignment.topRight, children: [BlocSelector<WithoutSurrenderBloc, WithoutSurrenderState, TextEditingController?>(selector: (state) => state.group1089Controller, builder: (context, group1089Controller) {return CustomTextFormField(width: getHorizontalSize(300), controller: group1089Controller, hintText: "msg_total_monthly_investment".tr, hintStyle: CustomTextStyles.bodyMedium14, alignment: Alignment.bottomCenter, borderDecoration: TextFormFieldStyleHelper.underLineGray, filled: false);}), Align(alignment: Alignment.topRight, child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_rs".tr, style: CustomTextStyles.labelLargeBluegray80001), TextSpan(text: "lbl_5763".tr, style: CustomTextStyles.headlineSmallBluegray80001_1)]), textAlign: TextAlign.left))])), SizedBox(height: getVerticalSize(34), width: getHorizontalSize(300), child: Stack(alignment: Alignment.topRight, children: [BlocSelector<WithoutSurrenderBloc, WithoutSurrenderState, TextEditingController?>(selector: (state) => state.savingratioController, builder: (context, savingratioController) {return CustomTextFormField(width: getHorizontalSize(300), controller: savingratioController, hintText: "lbl_saving_ratio".tr, hintStyle: CustomTextStyles.bodyMedium14, textInputAction: TextInputAction.done, alignment: Alignment.bottomCenter, borderDecoration: TextFormFieldStyleHelper.underLineGray, filled: false);}), Align(alignment: Alignment.topRight, child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_28_822".tr, style: CustomTextStyles.headlineSmallBluegray80001_1), TextSpan(text: "lbl8".tr, style: CustomTextStyles.labelLargeBluegray80001)]), textAlign: TextAlign.left))])), Padding(padding: getPadding(left: 15, right: 15), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 4), child: Text("msg_already_investing".tr, style: CustomTextStyles.bodyMedium14)), RichText(text: TextSpan(children: [TextSpan(text: "lbl_rs".tr, style: CustomTextStyles.labelLargeGreen700), TextSpan(text: "lbl_1183".tr, style: CustomTextStyles.headlineSmallGreen700)]), textAlign: TextAlign.left)])), Padding(padding: getPadding(left: 15, top: 56, right: 15), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("msg_new_monthly_investment".tr, style: CustomTextStyles.bodyMedium14), RichText(text: TextSpan(children: [TextSpan(text: "lbl_rs".tr, style: CustomTextStyles.labelLargeBluegray80001), TextSpan(text: "lbl_4580".tr, style: CustomTextStyles.headlineSmallBluegray80001_1)]), textAlign: TextAlign.right)])), Padding(padding: getPadding(top: 90), child: Divider(color: appTheme.redA70001)), Padding(padding: getPadding(top: 97), child: Text("lbl_hard_to_manage".tr, textAlign: TextAlign.center, style: CustomTextStyles.titleMediumOnPrimary18))]))]))), bottomNavigationBar: CustomBottomAppBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}))); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return "/"; case BottomBarEnum.Financialplan: return "/"; case BottomBarEnum.Transaction: return AppRoutes.withSurrenderPage; case BottomBarEnum.Advisory: return "/"; case BottomBarEnum.Monitoring: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.withSurrenderPage: return WithSurrenderPage.builder(context); default: return DefaultWidget();} } 
/// Navigates to the withSurrenderContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the withSurrenderContainerScreen.
onTapLeftarrowone(BuildContext context) { NavigatorService.pushNamed(AppRoutes.withSurrenderContainerScreen, ); } 
/// Navigates to the withSurrenderContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the withSurrenderContainerScreen.
onTapWithsurrender(BuildContext context) { NavigatorService.pushNamed(AppRoutes.withSurrenderContainerScreen, ); } 
 }
