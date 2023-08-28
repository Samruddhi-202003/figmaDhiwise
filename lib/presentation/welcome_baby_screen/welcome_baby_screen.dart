import 'bloc/welcome_baby_bloc.dart';import 'models/welcome_baby_model.dart';import 'package:dotted_border/dotted_border.dart';import 'package:flutter/material.dart';import 'package:samruddhi_s_application1/core/app_export.dart';import 'package:samruddhi_s_application1/widgets/app_bar/appbar_image.dart';import 'package:samruddhi_s_application1/widgets/app_bar/appbar_title.dart';import 'package:samruddhi_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:samruddhi_s_application1/widgets/custom_elevated_button.dart';import 'package:samruddhi_s_application1/widgets/custom_icon_button.dart';import 'package:samruddhi_s_application1/widgets/custom_switch.dart';import 'package:samruddhi_s_application1/widgets/custom_text_form_field.dart';class WelcomeBabyScreen extends StatelessWidget {const WelcomeBabyScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<WelcomeBabyBloc>(create: (context) => WelcomeBabyBloc(WelcomeBabyState(welcomeBabyModelObj: WelcomeBabyModel()))..add(WelcomeBabyInitialEvent()), child: WelcomeBabyScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimary.withOpacity(1), resizeToAvoidBottomInset: false, appBar: CustomAppBar(leadingWidth: getHorizontalSize(35), leading: AppbarImage(imagePath: ImageConstant.imgLeftarrow1, margin: getMargin(left: 15, top: 10, bottom: 10)), centerTitle: true, title: AppbarTitle(text: "lbl_goal_cards".tr), actions: [Container(height: getVerticalSize(14.009998), width: getHorizontalSize(36), margin: getMargin(left: 15, top: 12, right: 15, bottom: 13), child: Stack(alignment: Alignment.topRight, children: [BlocSelector<WelcomeBabyBloc, WelcomeBabyState, bool?>(selector: (state) => state.isSelectedSwitch, builder: (context, isSelectedSwitch) {return CustomSwitch(alignment: Alignment.center, value: isSelectedSwitch, onChange: (value) {context.read<WelcomeBabyBloc>().add(ChangeSwitchEvent(value: value));});}), Align(alignment: Alignment.topRight, child: Padding(padding: getPadding(left: 15, right: 5, bottom: 1), child: Text("lbl".tr.toUpperCase(), style: CustomTextStyles.labelSmallOrange500)))]))], styleType: Style.bgFill), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: getPadding(top: 10), child: Padding(padding: getPadding(left: 9, right: 9), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(margin: getMargin(left: 6, right: 6), decoration: AppDecoration.outlinePink.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [BlocSelector<WelcomeBabyBloc, WelcomeBabyState, TextEditingController?>(selector: (state) => state.welcomingourController, builder: (context, welcomingourController) {return CustomTextFormField(controller: welcomingourController, hintText: "msg_welcoming_our_baby".tr, hintStyle: CustomTextStyles.titleSmallOnPrimary_1, textInputAction: TextInputAction.done);}), Padding(padding: getPadding(left: 9, top: 1, right: 9, bottom: 10), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: SizedBox(width: getHorizontalSize(218), child: Text("msg2".tr, maxLines: 6, overflow: TextOverflow.ellipsis, style: CustomTextStyles.labelMediumBluegray80001.copyWith(height: 1.40)))), Container(height: getSize(80), width: getSize(80), padding: getPadding(left: 5, top: 1, right: 5, bottom: 1), decoration: BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder5), child: CustomImageView(imagePath: ImageConstant.imgAsd24, height: getSize(70), width: getSize(70), alignment: Alignment.bottomCenter))]))])), Container(margin: getMargin(left: 6, top: 10, right: 6), padding: getPadding(left: 15, top: 4, right: 15, bottom: 4), decoration: AppDecoration.gradientPinkToPink.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: getPadding(top: 8, bottom: 7), child: Text("lbl_target_value".tr, style: theme.textTheme.titleSmall)), Padding(padding: getPadding(bottom: 5), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_rs".tr, style: CustomTextStyles.titleSmallOnPrimaryMedium), TextSpan(text: "lbl_66k".tr, style: theme.textTheme.displaySmall)]), textAlign: TextAlign.left))])), Container(margin: getMargin(left: 6, top: 5, right: 6), padding: getPadding(left: 15, top: 4, right: 15, bottom: 4), decoration: AppDecoration.gradientOrangeToPink.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [Padding(padding: getPadding(top: 8, bottom: 8), child: Text("msg_already_achieved2".tr, style: theme.textTheme.titleSmall)), Container(width: getHorizontalSize(36), margin: getMargin(bottom: 6), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_rs".tr, style: CustomTextStyles.titleSmallOnPrimaryMedium), TextSpan(text: "lbl_0".tr, style: theme.textTheme.displaySmall)]), textAlign: TextAlign.right))])), Container(height: getVerticalSize(50), width: getHorizontalSize(330), margin: getMargin(top: 2), child: Stack(alignment: Alignment.centerRight, children: [Align(alignment: Alignment.center, child: Container(padding: getPadding(left: 15, top: 11, right: 15, bottom: 11), decoration: AppDecoration.gradientPinkToPink.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Text("lbl_target_date".tr, style: theme.textTheme.titleSmall))), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(right: 15), child: Text("lbl_12_jan_2027".tr, style: theme.textTheme.headlineLarge)))])), Container(margin: getMargin(left: 6, top: 5, right: 6), padding: getPadding(left: 15, top: 4, right: 15, bottom: 4), decoration: AppDecoration.gradientOrangeToPink.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: getPadding(top: 8, bottom: 7), child: Text("lbl_changes".tr, style: theme.textTheme.titleSmall)), Padding(padding: getPadding(bottom: 3), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_delayed_by".tr, style: CustomTextStyles.titleSmallOnPrimaryMedium), TextSpan(text: "lbl_1_years".tr, style: theme.textTheme.displaySmall)]), textAlign: TextAlign.left))])), Container(margin: getMargin(left: 6, top: 5, right: 6), padding: getPadding(left: 15, top: 4, right: 15, bottom: 4), decoration: AppDecoration.gradientPinkToPink.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: getPadding(top: 8, bottom: 7), child: Text("msg_monthly_investment".tr, style: theme.textTheme.titleSmall)), Padding(padding: getPadding(bottom: 5), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_rs".tr, style: CustomTextStyles.titleSmallOnPrimaryMedium), TextSpan(text: "lbl_1400".tr, style: theme.textTheme.displaySmall)]), textAlign: TextAlign.left))])), Padding(padding: getPadding(left: 6, top: 10, right: 6), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Padding(padding: getPadding(right: 20), child: Column(crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.start, children: [SizedBox(height: getVerticalSize(34), width: getHorizontalSize(145), child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.centerRight, child: Container(padding: getPadding(left: 15, top: 2, right: 15, bottom: 2), decoration: AppDecoration.fillPink.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Text("lbl_time_completed".tr, style: theme.textTheme.labelLarge))), CustomIconButton(height: getSize(34), width: getSize(34), padding: getPadding(all: 8), alignment: Alignment.centerLeft, child: CustomImageView(imagePath: ImageConstant.imgGroup113))])), Padding(padding: getPadding(left: 20, top: 5, right: 9), child: DottedBorder(color: appTheme.orange500, padding: EdgeInsets.only(left: getHorizontalSize(1), top: getVerticalSize(1), right: getHorizontalSize(1), bottom: getVerticalSize(1)), strokeWidth: getHorizontalSize(1), radius: Radius.circular(20), borderType: BorderType.RRect, dashPattern: [3, 3], child: Container(padding: getPadding(left: 30, top: 3, right: 30, bottom: 3), decoration: AppDecoration.outlineOrange.copyWith(borderRadius: BorderRadiusStyle.circleBorder20), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgTime11, height: getVerticalSize(16), width: getHorizontalSize(56), alignment: Alignment.center, margin: getMargin(top: 3)), Align(alignment: Alignment.centerRight, child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [Text("lbl_year".tr, style: theme.textTheme.labelSmall), Padding(padding: getPadding(left: 12), child: Text("lbl_month".tr, style: theme.textTheme.labelSmall))]))]))))]))), Expanded(child: Padding(padding: getPadding(left: 20), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [SizedBox(height: getVerticalSize(34), width: getHorizontalSize(145), child: Stack(alignment: Alignment.centerRight, children: [Align(alignment: Alignment.centerLeft, child: Container(padding: getPadding(left: 14, top: 2, right: 14, bottom: 2), decoration: AppDecoration.fillPink.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Text("lbl_time_remaining".tr, style: theme.textTheme.labelLarge))), CustomIconButton(height: getSize(34), width: getSize(34), padding: getPadding(all: 8), alignment: Alignment.centerRight, child: CustomImageView(imagePath: ImageConstant.imgGroup111))])), Padding(padding: getPadding(left: 9, top: 5, right: 20), child: DottedBorder(color: appTheme.orange500, padding: EdgeInsets.only(left: getHorizontalSize(1), top: getVerticalSize(1), right: getHorizontalSize(1), bottom: getVerticalSize(1)), strokeWidth: getHorizontalSize(1), radius: Radius.circular(20), borderType: BorderType.RRect, dashPattern: [3, 3], child: Container(padding: getPadding(left: 30, top: 3, right: 30, bottom: 3), decoration: AppDecoration.outlineOrange.copyWith(borderRadius: BorderRadiusStyle.circleBorder20), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgTime17, height: getVerticalSize(16), width: getHorizontalSize(56), alignment: Alignment.center, margin: getMargin(top: 3)), Align(alignment: Alignment.centerRight, child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [Text("lbl_year".tr, style: theme.textTheme.labelSmall), Padding(padding: getPadding(left: 12), child: Text("lbl_month".tr, style: theme.textTheme.labelSmall))]))]))))])))])), Container(height: getVerticalSize(355), width: getHorizontalSize(342), margin: getMargin(top: 11), child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(svgPath: ImageConstant.imgGroupPrimary, height: getSize(342), width: getSize(342), alignment: Alignment.center), Align(alignment: Alignment.topCenter, child: SizedBox(height: getVerticalSize(220), width: getHorizontalSize(304), child: Stack(alignment: Alignment.bottomCenter, children: [CustomImageView(imagePath: ImageConstant.imgFamily21, height: getVerticalSize(220), width: getHorizontalSize(304), alignment: Alignment.center), CustomElevatedButton(width: getHorizontalSize(180), text: "msg_my_financial_plan".tr, margin: getMargin(bottom: 10), buttonStyle: CustomButtonStyles.outlineBlack, onTap: () {onTapMy(context);}, alignment: Alignment.bottomCenter)])))]))])))))); } 
/// Navigates to the withSurrenderContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the withSurrenderContainerScreen.
onTapMy(BuildContext context) { NavigatorService.pushNamed(AppRoutes.withSurrenderContainerScreen, ); } 
 }
