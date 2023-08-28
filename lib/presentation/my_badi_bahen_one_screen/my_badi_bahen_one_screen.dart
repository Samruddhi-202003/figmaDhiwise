import '../my_badi_bahen_one_screen/widgets/my_badi_bahen_item_widget.dart';import 'bloc/my_badi_bahen_one_bloc.dart';import 'models/my_badi_bahen_item_model.dart';import 'models/my_badi_bahen_one_model.dart';import 'package:dotted_border/dotted_border.dart';import 'package:flutter/material.dart';import 'package:samruddhi_s_application1/core/app_export.dart';import 'package:samruddhi_s_application1/widgets/app_bar/appbar_image.dart';import 'package:samruddhi_s_application1/widgets/app_bar/appbar_subtitle_2.dart';import 'package:samruddhi_s_application1/widgets/app_bar/appbar_title.dart';import 'package:samruddhi_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:samruddhi_s_application1/widgets/custom_elevated_button.dart';import 'package:samruddhi_s_application1/widgets/custom_floating_text_field.dart';class MyBadiBahenOneScreen extends StatelessWidget {const MyBadiBahenOneScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<MyBadiBahenOneBloc>(create: (context) => MyBadiBahenOneBloc(MyBadiBahenOneState(myBadiBahenOneModelObj: MyBadiBahenOneModel()))..add(MyBadiBahenOneInitialEvent()), child: MyBadiBahenOneScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimary.withOpacity(1), resizeToAvoidBottomInset: false, appBar: CustomAppBar(leadingWidth: getHorizontalSize(35), leading: AppbarImage(imagePath: ImageConstant.imgLeftarrow1, margin: getMargin(left: 15, top: 10, bottom: 10), onTap: () {onTapLeftarrowone(context);}), centerTitle: true, title: AppbarTitle(text: "lbl_my_badi_bahen".tr), actions: [Container(margin: getMargin(left: 15, top: 13, right: 15, bottom: 13), padding: getPadding(left: 2, right: 2), decoration: AppDecoration.outlineOrange5003.copyWith(borderRadius: BorderRadiusStyle.roundedBorder2), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(height: getSize(10), width: getSize(10), margin: getMargin(top: 2, bottom: 2), decoration: BoxDecoration(color: appTheme.orange500, borderRadius: BorderRadius.circular(getHorizontalSize(2)))), AppbarSubtitle2(text: "lbl5".tr.toUpperCase(), margin: getMargin(left: 2, top: 1, right: 2))]))], styleType: Style.bgFill), body: Container(width: double.maxFinite, padding: getPadding(left: 15, right: 15), decoration: AppDecoration.gradientPrimaryToOrange, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(top: 10), child: DottedBorder(color: appTheme.gray600, padding: EdgeInsets.only(left: getHorizontalSize(1), top: getVerticalSize(1), right: getHorizontalSize(1), bottom: getVerticalSize(1)), strokeWidth: getHorizontalSize(1), radius: Radius.circular(5), borderType: BorderType.RRect, dashPattern: [2, 2], child: Container(padding: getPadding(left: 38, top: 9, right: 38, bottom: 9), decoration: AppDecoration.outlineGray600.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Text("lbl_sunita_das".tr.toUpperCase(), style: CustomTextStyles.titleLargeRedA70001Bold), Padding(padding: getPadding(top: 3, bottom: 4), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomElevatedButton(height: getVerticalSize(30), width: getHorizontalSize(30), text: "lbl_32".tr, buttonStyle: CustomButtonStyles.fillOrange, buttonTextStyle: CustomTextStyles.titleMediumOnPrimary), CustomElevatedButton(height: getVerticalSize(30), width: getHorizontalSize(170), text: "msg_working_from_home".tr.toUpperCase()), Container(padding: getPadding(left: 5, top: 4, right: 5, bottom: 4), decoration: AppDecoration.fillBlueGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Text("lbl_8k".tr, style: CustomTextStyles.titleSmallOnPrimary_1))]))])))), Container(height: getVerticalSize(297), width: getHorizontalSize(330), margin: getMargin(top: 15), child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.topCenter, child: Container(height: getVerticalSize(200), width: getHorizontalSize(172), margin: getMargin(top: 20), child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.bottomCenter, child: Container(height: getSize(172), width: getSize(172), decoration: BoxDecoration(color: appTheme.redA70001.withOpacity(0.2), borderRadius: BorderRadius.circular(getHorizontalSize(86))))), CustomImageView(imagePath: ImageConstant.imgIntersect, height: getVerticalSize(198), width: getHorizontalSize(129), alignment: Alignment.center)]))), SizedBox(width: double.maxFinite, child: Align(alignment: Alignment.center, child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [BlocSelector<MyBadiBahenOneBloc, MyBadiBahenOneState, TextEditingController?>(selector: (state) => state.rs300027Controller, builder: (context, rs300027Controller) {return CustomFloatingTextField(width: getHorizontalSize(124), controller: rs300027Controller, labelText: "lbl_monthly_savings".tr, labelStyle: CustomTextStyles.titleMediumGreen700_1, hintText: "lbl_monthly_savings".tr, hintStyle: CustomTextStyles.titleMediumGreen700_1, textInputAction: TextInputAction.done, contentPadding: getPadding(left: 7, top: 11, right: 7, bottom: 2), borderDecoration: FloatingTextFormFieldStyleHelper.outlineOrangeTL10, filled: true, fillColor: theme.colorScheme.onPrimary.withOpacity(1));}), SizedBox(height: getVerticalSize(47), width: getHorizontalSize(100), child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.bottomCenter, child: Container(padding: getPadding(left: 24, top: 2, right: 24, bottom: 2), decoration: AppDecoration.outlineOrange5003.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Padding(padding: getPadding(top: 2), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_3".tr, style: CustomTextStyles.titleLargeGreen700), TextSpan(text: "lbl_months".tr, style: CustomTextStyles.labelLargeGreen700)]), textAlign: TextAlign.left)))), Align(alignment: Alignment.topCenter, child: Container(height: getVerticalSize(14), width: getHorizontalSize(68), decoration: BoxDecoration(color: appTheme.orange500, borderRadius: BorderRadius.circular(getHorizontalSize(7))))), Align(alignment: Alignment.topCenter, child: Padding(padding: getPadding(top: 1), child: Text("lbl_savings_started".tr, style: CustomTextStyles.labelSmallOnPrimary_1)))]))]), Expanded(child: SizedBox(height: getVerticalSize(250), child: BlocSelector<MyBadiBahenOneBloc, MyBadiBahenOneState, MyBadiBahenOneModel?>(selector: (state) => state.myBadiBahenOneModelObj, builder: (context, myBadiBahenOneModelObj) {return ListView.separated(padding: getPadding(top: 158), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: getHorizontalSize(15));}, itemCount: myBadiBahenOneModelObj?.myBadiBahenItemList.length ?? 0, itemBuilder: (context, index) {MyBadiBahenItemModel model = myBadiBahenOneModelObj?.myBadiBahenItemList[index] ?? MyBadiBahenItemModel(); return MyBadiBahenItemWidget(model);});})))])))])), Padding(padding: getPadding(left: 22, top: 15, right: 22), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getSize(70), width: getSize(70), padding: getPadding(all: 10), decoration: AppDecoration.outlineBlack900012.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: CustomImageView(imagePath: ImageConstant.imgGoal12, height: getSize(50), width: getSize(50), alignment: Alignment.center)), Container(width: getHorizontalSize(76), margin: getMargin(top: 8), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_investment_value".tr, style: CustomTextStyles.bodySmallBlack90001_1), TextSpan(text: "lbl_rs".tr, style: CustomTextStyles.labelLargeGreen700), TextSpan(text: "lbl_10".tr, style: CustomTextStyles.titleMediumGreen700Bold), TextSpan(text: "lbl_k".tr, style: CustomTextStyles.labelLargeGreen700)]), textAlign: TextAlign.center))]), Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getSize(70), width: getSize(70), padding: getPadding(all: 10), decoration: AppDecoration.outlineBlack900012.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: CustomImageView(imagePath: ImageConstant.imgHealthinsurance, height: getSize(50), width: getSize(50), alignment: Alignment.center)), Container(width: getHorizontalSize(80), margin: getMargin(top: 8), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_health_insurance2".tr, style: CustomTextStyles.bodySmallBlack90001_1), TextSpan(text: "lbl_protected".tr, style: CustomTextStyles.titleMediumGreen700Bold)]), textAlign: TextAlign.center))]), Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getSize(70), width: getSize(70), padding: getPadding(all: 10), decoration: AppDecoration.outlineBlack900012.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: CustomImageView(imagePath: ImageConstant.imgLife1, height: getSize(50), width: getSize(50), alignment: Alignment.center)), Container(width: getHorizontalSize(65), margin: getMargin(top: 8), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_term_insurance2".tr, style: CustomTextStyles.bodySmallBlack90001_1), TextSpan(text: "lbl_152".tr, style: CustomTextStyles.titleMediumGreen700Bold), TextSpan(text: "lbl_lakh".tr, style: CustomTextStyles.labelLargeGreen700)]), textAlign: TextAlign.center))])])), Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: getMargin(top: 16), color: appTheme.blueGray80001, shape: RoundedRectangleBorder(side: BorderSide(color: theme.colorScheme.onPrimary.withOpacity(1), width: getHorizontalSize(5)), borderRadius: BorderRadiusStyle.roundedBorder5), child: Container(height: getVerticalSize(175), width: getHorizontalSize(320), decoration: AppDecoration.outlineOnPrimary2.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Stack(alignment: Alignment.bottomCenter, children: [CustomImageView(imagePath: ImageConstant.imgDcfgd1, height: getVerticalSize(175), width: getHorizontalSize(320), radius: BorderRadius.circular(getHorizontalSize(5)), alignment: Alignment.center), Align(alignment: Alignment.bottomCenter, child: Padding(padding: getPadding(left: 70, right: 70, bottom: 10), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgPlaybutton1, height: getSize(40), width: getSize(40)), Container(height: getVerticalSize(49), width: getHorizontalSize(180), margin: getMargin(top: 5), child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.topRight, child: Padding(padding: getPadding(right: 5), child: Text("msg_meet_your_badi_bahen".tr, style: CustomTextStyles.titleMediumOnPrimary))), CustomElevatedButton(width: getHorizontalSize(180), text: "lbl_go_to_agreement".tr, buttonStyle: CustomButtonStyles.outlineBlack, onTap: () {onTapGotoagreement(context);}, alignment: Alignment.bottomCenter)]))])))])))])))); } 
/// Navigates to the userCreationTwoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the userCreationTwoScreen.
onTapLeftarrowone(BuildContext context) { NavigatorService.pushNamed(AppRoutes.userCreationTwoScreen, ); } 
/// Navigates to the mySubscriptionScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the mySubscriptionScreen.
onTapGotoagreement(BuildContext context) { NavigatorService.pushNamed(AppRoutes.mySubscriptionScreen, ); } 
 }
