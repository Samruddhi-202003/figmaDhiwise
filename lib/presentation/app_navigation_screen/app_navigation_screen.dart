import 'bloc/app_navigation_bloc.dart';import 'models/app_navigation_model.dart';import 'package:flutter/material.dart';import 'package:samruddhi_s_application1/core/app_export.dart';class AppNavigationScreen extends StatelessWidget {const AppNavigationScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<AppNavigationBloc>(create: (context) => AppNavigationBloc(AppNavigationState(appNavigationModelObj: AppNavigationModel()))..add(AppNavigationInitialEvent()), child: AppNavigationScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<AppNavigationBloc, AppNavigationState>(builder: (context, state) {return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimary.withOpacity(1), body: SizedBox(width: getHorizontalSize(375), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_app_navigation".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20), child: Text("msg_check_your_app_s".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.blueGray400, fontSize: getFontSize(16), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.black90001))])), Expanded(child: SingleChildScrollView(child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [GestureDetector(onTap: () {onTapFalshscreen(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_falsh_screen".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapAndroidLargeTen(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_android_large".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapAndroidLargeEleven(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_android_large2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapAndroidLargeTwelve(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_android_large3".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapAndroidLargeThirteen(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_android_large4".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapAndroidLargeFourteen(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_android_large5".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapAndroidLargeFifteen(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_android_large6".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapAndroidLargeSixteen(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_android_large7".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapAndroidLargeEight(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_android_large8".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapAndroidLargeNine(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_android_large9".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapBadLoanSquareOffOne(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_bad_loan_square2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapColorpalette(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_color_palette".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapLanguage(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_language".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapInformationOne(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_information_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapInformationTwo(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_information_two".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapInformationThree(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_information_three".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapLoginOne(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_login_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapOTP(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_otp".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapLogin(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_login2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapUsercreationOne(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_user_creation".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapDashboard(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_dashboard".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapBasicInformationThreeTabContainer(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_basic_information".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapFianncialplan(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_fianncial_plan".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapGoalsummaryShouldBe(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_goal_summary_should2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapGoalsummaryPractical(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_goal_summary_practical2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapEmergancyFund(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_emergancy_fund".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapPriyankasstudy(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_priyanka_s_study".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapPritamstudy(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_pritam_study".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapPriyankamarriage(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_priyanka_marriage".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapDreamhome(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_dream_home2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapRetirement(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_retirement".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapWelcomebaby(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_welcome_baby".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapMymarriage(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_my_marriage2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapWithSurrenderContainer(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_with_surrender".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapWithoutSurrender(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_without_surrender".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapCar(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_car2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapBadLoanSquareOff(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_bad_loan_square".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapHealthprotected(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_health_protected".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapTermrisk(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_term_risk".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapLoginTwo(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_login_two".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapOTPOne(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_otp_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapUsercreationTwo(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_user_creation2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapDashboardTwo(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_dashboard_two".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapFontpalette(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_font_palette".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapTransaction(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_transaction2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapTransactiongoal(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_transaction_goal".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapTransactiongoaldetails(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_transaction_goal2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapTransactioninsurance(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_transaction_insurance".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapTransactionaddinsurance(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_transaction_add".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapTransactionoldinvesment(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_transaction_old".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapTransactionnewinvesment(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_transaction_new".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapTransactionloan(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_transaction_loan".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapTransactionnewloan(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_transaction_new2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapTransactionloanOne(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_transaction_loan2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapTransactionnewsavingsonetime(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_transaction_new3".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapTransactionnewsavingsrecurring(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_transaction_new4".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapAndroidLargeSeventeen(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_android_large10".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapAndroidLargeEighteen(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_android_large11".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapHealthprotectedOne(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_health_protected2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapHealthrsik(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_health_rsik".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapTermriskOne(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_term_risk_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapTermprotected(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_term_protected".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapAndroidLargeNineteen(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_android_large12".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapUsercreationFour(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_user_creation3".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapUsercreationThree(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_user_creation4".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapAndroidLargeFive(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_android_large13".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapAndroidLargeFour(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_android_large14".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapHamburgermenu(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_hamburger_menu".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapTermscondition(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_terms_condition".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapPrivacypolicy(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_privacy_policy4".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapSubscription(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_subscription".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapMybadibahenOne(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_my_badi_bahen_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapMybadibahen(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_my_badi_bahen2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapMybadibahenTwo(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_my_badi_bahen_two".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapBadInsurance(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_bad_insurance".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapAdvisory(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_advisory2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapMonitoring(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_monitoring2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapMysubscription(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_my_subscription2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapMysubscriptionTwo(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_my_subscription".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapMysubscriptionThree(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_my_subscription2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapMysubscriptionFour(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_my_subscription3".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapConnectionlost(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_connection_lost".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapErrorOne(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_error_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapError(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_error".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapLoanoption(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_loan_option".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapHamburgermenuOne(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_hamburger_menu_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapDisclaimer(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_disclaimer3".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapAdvisoryOne(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_advisory_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapMonitoringOne(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_monitoring_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapAgreement(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_agreement".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapTermsConditions(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_terms_conditions3".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapPrivacy(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_privacy".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapConfidentiality(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_confidentiality".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapLoanoptionOne(context);}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_loan_option_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black90001, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))])))]))))]))));}); } 
/// Navigates to the falshScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the falshScreen.
onTapFalshscreen(BuildContext context) { NavigatorService.pushNamed(AppRoutes.falshScreen, ); } 
/// Navigates to the androidLargeTenScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the androidLargeTenScreen.
onTapAndroidLargeTen(BuildContext context) { NavigatorService.pushNamed(AppRoutes.androidLargeTenScreen, ); } 
/// Navigates to the androidLargeElevenScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the androidLargeElevenScreen.
onTapAndroidLargeEleven(BuildContext context) { NavigatorService.pushNamed(AppRoutes.androidLargeElevenScreen, ); } 
/// Navigates to the androidLargeTwelveScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the androidLargeTwelveScreen.
onTapAndroidLargeTwelve(BuildContext context) { NavigatorService.pushNamed(AppRoutes.androidLargeTwelveScreen, ); } 
/// Navigates to the androidLargeThirteenScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the androidLargeThirteenScreen.
onTapAndroidLargeThirteen(BuildContext context) { NavigatorService.pushNamed(AppRoutes.androidLargeThirteenScreen, ); } 
/// Navigates to the androidLargeFourteenScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the androidLargeFourteenScreen.
onTapAndroidLargeFourteen(BuildContext context) { NavigatorService.pushNamed(AppRoutes.androidLargeFourteenScreen, ); } 
/// Navigates to the androidLargeFifteenScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the androidLargeFifteenScreen.
onTapAndroidLargeFifteen(BuildContext context) { NavigatorService.pushNamed(AppRoutes.androidLargeFifteenScreen, ); } 
/// Navigates to the androidLargeSixteenScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the androidLargeSixteenScreen.
onTapAndroidLargeSixteen(BuildContext context) { NavigatorService.pushNamed(AppRoutes.androidLargeSixteenScreen, ); } 
/// Navigates to the androidLargeEightScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the androidLargeEightScreen.
onTapAndroidLargeEight(BuildContext context) { NavigatorService.pushNamed(AppRoutes.androidLargeEightScreen, ); } 
/// Navigates to the androidLargeNineScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the androidLargeNineScreen.
onTapAndroidLargeNine(BuildContext context) { NavigatorService.pushNamed(AppRoutes.androidLargeNineScreen, ); } 
/// Navigates to the badLoanSquareOffOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the badLoanSquareOffOneScreen.
onTapBadLoanSquareOffOne(BuildContext context) { NavigatorService.pushNamed(AppRoutes.badLoanSquareOffOneScreen, ); } 
/// Navigates to the colorPaletteScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the colorPaletteScreen.
onTapColorpalette(BuildContext context) { NavigatorService.pushNamed(AppRoutes.colorPaletteScreen, ); } 
/// Navigates to the languageScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the languageScreen.
onTapLanguage(BuildContext context) { NavigatorService.pushNamed(AppRoutes.languageScreen, ); } 
/// Navigates to the informationOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the informationOneScreen.
onTapInformationOne(BuildContext context) { NavigatorService.pushNamed(AppRoutes.informationOneScreen, ); } 
/// Navigates to the informationTwoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the informationTwoScreen.
onTapInformationTwo(BuildContext context) { NavigatorService.pushNamed(AppRoutes.informationTwoScreen, ); } 
/// Navigates to the informationThreeScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the informationThreeScreen.
onTapInformationThree(BuildContext context) { NavigatorService.pushNamed(AppRoutes.informationThreeScreen, ); } 
/// Navigates to the loginOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the loginOneScreen.
onTapLoginOne(BuildContext context) { NavigatorService.pushNamed(AppRoutes.loginOneScreen, ); } 
/// Navigates to the otpScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the otpScreen.
onTapOTP(BuildContext context) { NavigatorService.pushNamed(AppRoutes.otpScreen, ); } 
/// Navigates to the loginScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the loginScreen.
onTapLogin(BuildContext context) { NavigatorService.pushNamed(AppRoutes.loginScreen, ); } 
/// Navigates to the userCreationOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the userCreationOneScreen.
onTapUsercreationOne(BuildContext context) { NavigatorService.pushNamed(AppRoutes.userCreationOneScreen, ); } 
/// Navigates to the dashboardScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the dashboardScreen.
onTapDashboard(BuildContext context) { NavigatorService.pushNamed(AppRoutes.dashboardScreen, ); } 
/// Navigates to the basicInformationThreeTabContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the basicInformationThreeTabContainerScreen.
onTapBasicInformationThreeTabContainer(BuildContext context) { NavigatorService.pushNamed(AppRoutes.basicInformationThreeTabContainerScreen, ); } 
/// Navigates to the fianncialPlanScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the fianncialPlanScreen.
onTapFianncialplan(BuildContext context) { NavigatorService.pushNamed(AppRoutes.fianncialPlanScreen, ); } 
/// Navigates to the goalSummaryShouldBeScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the goalSummaryShouldBeScreen.
onTapGoalsummaryShouldBe(BuildContext context) { NavigatorService.pushNamed(AppRoutes.goalSummaryShouldBeScreen, ); } 
/// Navigates to the goalSummaryPracticalScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the goalSummaryPracticalScreen.
onTapGoalsummaryPractical(BuildContext context) { NavigatorService.pushNamed(AppRoutes.goalSummaryPracticalScreen, ); } 
/// Navigates to the emergancyFundScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the emergancyFundScreen.
onTapEmergancyFund(BuildContext context) { NavigatorService.pushNamed(AppRoutes.emergancyFundScreen, ); } 
/// Navigates to the priyankaSStudyScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the priyankaSStudyScreen.
onTapPriyankasstudy(BuildContext context) { NavigatorService.pushNamed(AppRoutes.priyankaSStudyScreen, ); } 
/// Navigates to the pritamStudyScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the pritamStudyScreen.
onTapPritamstudy(BuildContext context) { NavigatorService.pushNamed(AppRoutes.pritamStudyScreen, ); } 
/// Navigates to the priyankaMarriageScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the priyankaMarriageScreen.
onTapPriyankamarriage(BuildContext context) { NavigatorService.pushNamed(AppRoutes.priyankaMarriageScreen, ); } 
/// Navigates to the dreamHomeScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the dreamHomeScreen.
onTapDreamhome(BuildContext context) { NavigatorService.pushNamed(AppRoutes.dreamHomeScreen, ); } 
/// Navigates to the retirementScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the retirementScreen.
onTapRetirement(BuildContext context) { NavigatorService.pushNamed(AppRoutes.retirementScreen, ); } 
/// Navigates to the welcomeBabyScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the welcomeBabyScreen.
onTapWelcomebaby(BuildContext context) { NavigatorService.pushNamed(AppRoutes.welcomeBabyScreen, ); } 
/// Navigates to the myMarriageScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the myMarriageScreen.
onTapMymarriage(BuildContext context) { NavigatorService.pushNamed(AppRoutes.myMarriageScreen, ); } 
/// Navigates to the withSurrenderContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the withSurrenderContainerScreen.
onTapWithSurrenderContainer(BuildContext context) { NavigatorService.pushNamed(AppRoutes.withSurrenderContainerScreen, ); } 
/// Navigates to the withoutSurrenderScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the withoutSurrenderScreen.
onTapWithoutSurrender(BuildContext context) { NavigatorService.pushNamed(AppRoutes.withoutSurrenderScreen, ); } 
/// Navigates to the carScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the carScreen.
onTapCar(BuildContext context) { NavigatorService.pushNamed(AppRoutes.carScreen, ); } 
/// Navigates to the badLoanSquareOffScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the badLoanSquareOffScreen.
onTapBadLoanSquareOff(BuildContext context) { NavigatorService.pushNamed(AppRoutes.badLoanSquareOffScreen, ); } 
/// Navigates to the healthProtectedScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the healthProtectedScreen.
onTapHealthprotected(BuildContext context) { NavigatorService.pushNamed(AppRoutes.healthProtectedScreen, ); } 
/// Navigates to the termRiskScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the termRiskScreen.
onTapTermrisk(BuildContext context) { NavigatorService.pushNamed(AppRoutes.termRiskScreen, ); } 
/// Navigates to the loginTwoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the loginTwoScreen.
onTapLoginTwo(BuildContext context) { NavigatorService.pushNamed(AppRoutes.loginTwoScreen, ); } 
/// Navigates to the otpOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the otpOneScreen.
onTapOTPOne(BuildContext context) { NavigatorService.pushNamed(AppRoutes.otpOneScreen, ); } 
/// Navigates to the userCreationTwoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the userCreationTwoScreen.
onTapUsercreationTwo(BuildContext context) { NavigatorService.pushNamed(AppRoutes.userCreationTwoScreen, ); } 
/// Navigates to the dashboardTwoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the dashboardTwoScreen.
onTapDashboardTwo(BuildContext context) { NavigatorService.pushNamed(AppRoutes.dashboardTwoScreen, ); } 
/// Navigates to the fontPaletteScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the fontPaletteScreen.
onTapFontpalette(BuildContext context) { NavigatorService.pushNamed(AppRoutes.fontPaletteScreen, ); } 
/// Navigates to the transactionScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the transactionScreen.
onTapTransaction(BuildContext context) { NavigatorService.pushNamed(AppRoutes.transactionScreen, ); } 
/// Navigates to the transactionGoalScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the transactionGoalScreen.
onTapTransactiongoal(BuildContext context) { NavigatorService.pushNamed(AppRoutes.transactionGoalScreen, ); } 
/// Navigates to the transactionGoalDetailsScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the transactionGoalDetailsScreen.
onTapTransactiongoaldetails(BuildContext context) { NavigatorService.pushNamed(AppRoutes.transactionGoalDetailsScreen, ); } 
/// Navigates to the transactionInsuranceScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the transactionInsuranceScreen.
onTapTransactioninsurance(BuildContext context) { NavigatorService.pushNamed(AppRoutes.transactionInsuranceScreen, ); } 
/// Navigates to the transactionAddInsuranceScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the transactionAddInsuranceScreen.
onTapTransactionaddinsurance(BuildContext context) { NavigatorService.pushNamed(AppRoutes.transactionAddInsuranceScreen, ); } 
/// Navigates to the transactionOldInvesmentScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the transactionOldInvesmentScreen.
onTapTransactionoldinvesment(BuildContext context) { NavigatorService.pushNamed(AppRoutes.transactionOldInvesmentScreen, ); } 
/// Navigates to the transactionNewInvesmentScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the transactionNewInvesmentScreen.
onTapTransactionnewinvesment(BuildContext context) { NavigatorService.pushNamed(AppRoutes.transactionNewInvesmentScreen, ); } 
/// Navigates to the transactionLoanScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the transactionLoanScreen.
onTapTransactionloan(BuildContext context) { NavigatorService.pushNamed(AppRoutes.transactionLoanScreen, ); } 
/// Navigates to the transactionNewLoanScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the transactionNewLoanScreen.
onTapTransactionnewloan(BuildContext context) { NavigatorService.pushNamed(AppRoutes.transactionNewLoanScreen, ); } 
/// Navigates to the transactionLoanOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the transactionLoanOneScreen.
onTapTransactionloanOne(BuildContext context) { NavigatorService.pushNamed(AppRoutes.transactionLoanOneScreen, ); } 
/// Navigates to the transactionNewSavingsOnetimeScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the transactionNewSavingsOnetimeScreen.
onTapTransactionnewsavingsonetime(BuildContext context) { NavigatorService.pushNamed(AppRoutes.transactionNewSavingsOnetimeScreen, ); } 
/// Navigates to the transactionNewSavingsRecurringScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the transactionNewSavingsRecurringScreen.
onTapTransactionnewsavingsrecurring(BuildContext context) { NavigatorService.pushNamed(AppRoutes.transactionNewSavingsRecurringScreen, ); } 
/// Navigates to the androidLargeSeventeenScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the androidLargeSeventeenScreen.
onTapAndroidLargeSeventeen(BuildContext context) { NavigatorService.pushNamed(AppRoutes.androidLargeSeventeenScreen, ); } 
/// Navigates to the androidLargeEighteenScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the androidLargeEighteenScreen.
onTapAndroidLargeEighteen(BuildContext context) { NavigatorService.pushNamed(AppRoutes.androidLargeEighteenScreen, ); } 
/// Navigates to the healthProtectedOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the healthProtectedOneScreen.
onTapHealthprotectedOne(BuildContext context) { NavigatorService.pushNamed(AppRoutes.healthProtectedOneScreen, ); } 
/// Navigates to the healthRsikScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the healthRsikScreen.
onTapHealthrsik(BuildContext context) { NavigatorService.pushNamed(AppRoutes.healthRsikScreen, ); } 
/// Navigates to the termRiskOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the termRiskOneScreen.
onTapTermriskOne(BuildContext context) { NavigatorService.pushNamed(AppRoutes.termRiskOneScreen, ); } 
/// Navigates to the termProtectedScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the termProtectedScreen.
onTapTermprotected(BuildContext context) { NavigatorService.pushNamed(AppRoutes.termProtectedScreen, ); } 
/// Navigates to the androidLargeNineteenScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the androidLargeNineteenScreen.
onTapAndroidLargeNineteen(BuildContext context) { NavigatorService.pushNamed(AppRoutes.androidLargeNineteenScreen, ); } 
/// Navigates to the userCreationFourScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the userCreationFourScreen.
onTapUsercreationFour(BuildContext context) { NavigatorService.pushNamed(AppRoutes.userCreationFourScreen, ); } 
/// Navigates to the userCreationThreeScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the userCreationThreeScreen.
onTapUsercreationThree(BuildContext context) { NavigatorService.pushNamed(AppRoutes.userCreationThreeScreen, ); } 
/// Navigates to the androidLargeFiveScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the androidLargeFiveScreen.
onTapAndroidLargeFive(BuildContext context) { NavigatorService.pushNamed(AppRoutes.androidLargeFiveScreen, ); } 
/// Navigates to the androidLargeFourScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the androidLargeFourScreen.
onTapAndroidLargeFour(BuildContext context) { NavigatorService.pushNamed(AppRoutes.androidLargeFourScreen, ); } 
/// Navigates to the hamburgerMenuScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the hamburgerMenuScreen.
onTapHamburgermenu(BuildContext context) { NavigatorService.pushNamed(AppRoutes.hamburgerMenuScreen, ); } 
/// Navigates to the termsConditionScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the termsConditionScreen.
onTapTermscondition(BuildContext context) { NavigatorService.pushNamed(AppRoutes.termsConditionScreen, ); } 
/// Navigates to the privacyPolicyScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the privacyPolicyScreen.
onTapPrivacypolicy(BuildContext context) { NavigatorService.pushNamed(AppRoutes.privacyPolicyScreen, ); } 
/// Navigates to the subscriptionScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the subscriptionScreen.
onTapSubscription(BuildContext context) { NavigatorService.pushNamed(AppRoutes.subscriptionScreen, ); } 
/// Navigates to the myBadiBahenOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the myBadiBahenOneScreen.
onTapMybadibahenOne(BuildContext context) { NavigatorService.pushNamed(AppRoutes.myBadiBahenOneScreen, ); } 
/// Navigates to the myBadiBahenScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the myBadiBahenScreen.
onTapMybadibahen(BuildContext context) { NavigatorService.pushNamed(AppRoutes.myBadiBahenScreen, ); } 
/// Navigates to the myBadiBahenTwoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the myBadiBahenTwoScreen.
onTapMybadibahenTwo(BuildContext context) { NavigatorService.pushNamed(AppRoutes.myBadiBahenTwoScreen, ); } 
/// Navigates to the badInsuranceScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the badInsuranceScreen.
onTapBadInsurance(BuildContext context) { NavigatorService.pushNamed(AppRoutes.badInsuranceScreen, ); } 
/// Navigates to the advisoryScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the advisoryScreen.
onTapAdvisory(BuildContext context) { NavigatorService.pushNamed(AppRoutes.advisoryScreen, ); } 
/// Navigates to the monitoringScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the monitoringScreen.
onTapMonitoring(BuildContext context) { NavigatorService.pushNamed(AppRoutes.monitoringScreen, ); } 
/// Navigates to the mySubscriptionScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the mySubscriptionScreen.
onTapMysubscription(BuildContext context) { NavigatorService.pushNamed(AppRoutes.mySubscriptionScreen, ); } 
/// Navigates to the mySubscriptionTwoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the mySubscriptionTwoScreen.
onTapMysubscriptionTwo(BuildContext context) { NavigatorService.pushNamed(AppRoutes.mySubscriptionTwoScreen, ); } 
/// Navigates to the mySubscriptionThreeScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the mySubscriptionThreeScreen.
onTapMysubscriptionThree(BuildContext context) { NavigatorService.pushNamed(AppRoutes.mySubscriptionThreeScreen, ); } 
/// Navigates to the mySubscriptionFourScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the mySubscriptionFourScreen.
onTapMysubscriptionFour(BuildContext context) { NavigatorService.pushNamed(AppRoutes.mySubscriptionFourScreen, ); } 
/// Navigates to the connectionLostScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the connectionLostScreen.
onTapConnectionlost(BuildContext context) { NavigatorService.pushNamed(AppRoutes.connectionLostScreen, ); } 
/// Navigates to the errorOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the errorOneScreen.
onTapErrorOne(BuildContext context) { NavigatorService.pushNamed(AppRoutes.errorOneScreen, ); } 
/// Navigates to the errorScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the errorScreen.
onTapError(BuildContext context) { NavigatorService.pushNamed(AppRoutes.errorScreen, ); } 
/// Navigates to the loanOptionScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the loanOptionScreen.
onTapLoanoption(BuildContext context) { NavigatorService.pushNamed(AppRoutes.loanOptionScreen, ); } 
/// Navigates to the hamburgerMenuOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the hamburgerMenuOneScreen.
onTapHamburgermenuOne(BuildContext context) { NavigatorService.pushNamed(AppRoutes.hamburgerMenuOneScreen, ); } 
/// Navigates to the disclaimerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the disclaimerScreen.
onTapDisclaimer(BuildContext context) { NavigatorService.pushNamed(AppRoutes.disclaimerScreen, ); } 
/// Navigates to the advisoryOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the advisoryOneScreen.
onTapAdvisoryOne(BuildContext context) { NavigatorService.pushNamed(AppRoutes.advisoryOneScreen, ); } 
/// Navigates to the monitoringOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the monitoringOneScreen.
onTapMonitoringOne(BuildContext context) { NavigatorService.pushNamed(AppRoutes.monitoringOneScreen, ); } 
/// Navigates to the agreementScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the agreementScreen.
onTapAgreement(BuildContext context) { NavigatorService.pushNamed(AppRoutes.agreementScreen, ); } 
/// Navigates to the termsConditionsScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the termsConditionsScreen.
onTapTermsConditions(BuildContext context) { NavigatorService.pushNamed(AppRoutes.termsConditionsScreen, ); } 
/// Navigates to the privacyScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the privacyScreen.
onTapPrivacy(BuildContext context) { NavigatorService.pushNamed(AppRoutes.privacyScreen, ); } 
/// Navigates to the confidentialityScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the confidentialityScreen.
onTapConfidentiality(BuildContext context) { NavigatorService.pushNamed(AppRoutes.confidentialityScreen, ); } 
/// Navigates to the loanOptionOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the loanOptionOneScreen.
onTapLoanoptionOne(BuildContext context) { NavigatorService.pushNamed(AppRoutes.loanOptionOneScreen, ); } 
 }
