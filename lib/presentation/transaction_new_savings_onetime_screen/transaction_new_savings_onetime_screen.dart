import 'bloc/transaction_new_savings_onetime_bloc.dart';import 'models/transaction_new_savings_onetime_model.dart';import 'package:flutter/material.dart';import 'package:samruddhi_s_application1/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/with_surrender_page/with_surrender_page.dart';import 'package:samruddhi_s_application1/widgets/app_bar/appbar_image.dart';import 'package:samruddhi_s_application1/widgets/app_bar/appbar_subtitle_2.dart';import 'package:samruddhi_s_application1/widgets/app_bar/appbar_title.dart';import 'package:samruddhi_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:samruddhi_s_application1/widgets/custom_bottom_app_bar.dart';import 'package:samruddhi_s_application1/widgets/custom_elevated_button.dart';import 'package:samruddhi_s_application1/widgets/custom_floating_text_field.dart';
// ignore_for_file: must_be_immutable
class TransactionNewSavingsOnetimeScreen extends StatelessWidget {TransactionNewSavingsOnetimeScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<TransactionNewSavingsOnetimeBloc>(create: (context) => TransactionNewSavingsOnetimeBloc(TransactionNewSavingsOnetimeState(transactionNewSavingsOnetimeModelObj: TransactionNewSavingsOnetimeModel()))..add(TransactionNewSavingsOnetimeInitialEvent()), child: TransactionNewSavingsOnetimeScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<TransactionNewSavingsOnetimeBloc, TransactionNewSavingsOnetimeState>(builder: (context, state) {return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimary.withOpacity(1), resizeToAvoidBottomInset: false, appBar: CustomAppBar(leadingWidth: getHorizontalSize(35), leading: AppbarImage(imagePath: ImageConstant.imgLeftarrow1, margin: getMargin(left: 15, top: 10, bottom: 10), onTap: () {onTapLeftarrowone(context);}), centerTitle: true, title: AppbarTitle(text: "lbl_bank_deposit".tr), actions: [Container(margin: getMargin(left: 15, top: 13, right: 15, bottom: 13), padding: getPadding(left: 2, right: 2), decoration: AppDecoration.outlineOrange5003.copyWith(borderRadius: BorderRadiusStyle.roundedBorder2), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(height: getSize(10), width: getSize(10), margin: getMargin(top: 2, bottom: 2), decoration: BoxDecoration(color: appTheme.orange500, borderRadius: BorderRadius.circular(getHorizontalSize(2)))), AppbarSubtitle2(text: "lbl7".tr.toUpperCase(), margin: getMargin(left: 4, right: 5, bottom: 1))]))], styleType: Style.bgFill), body: Container(width: double.maxFinite, padding: getPadding(left: 15, top: 11, right: 15, bottom: 11), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [SizedBox(height: getVerticalSize(52), width: getHorizontalSize(330), child: Stack(alignment: Alignment.topLeft, children: [Align(alignment: Alignment.bottomCenter, child: Container(margin: getMargin(top: 8), padding: getPadding(left: 10, top: 7, right: 10, bottom: 7), decoration: AppDecoration.outlineOrange5001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(left: 6, top: 3), child: Text("msg_is_your_bank_deposit".tr, style: theme.textTheme.titleMedium)), GestureDetector(onTap: () {onTapRownew(context);}, child: Container(margin: getMargin(top: 2), padding: getPadding(left: 5, top: 2, right: 5, bottom: 2), decoration: AppDecoration.outlineOrange500.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("lbl_new".tr, style: theme.textTheme.titleSmall), Container(height: getSize(18), width: getSize(18), margin: getMargin(left: 4, top: 2, bottom: 2), decoration: BoxDecoration(color: appTheme.orange500, borderRadius: BorderRadius.circular(getHorizontalSize(3))))])))]))), Align(alignment: Alignment.topLeft, child: Padding(padding: getPadding(top: 7), child: SizedBox(width: getHorizontalSize(69), child: Divider(indent: getHorizontalSize(10))))), Align(alignment: Alignment.topLeft, child: Padding(padding: getPadding(left: 15), child: Text("lbl_investment".tr, style: theme.textTheme.labelMedium)))])), BlocSelector<TransactionNewSavingsOnetimeBloc, TransactionNewSavingsOnetimeState, TextEditingController?>(selector: (state) => state.paymentformvaluController, builder: (context, paymentformvaluController) {return CustomFloatingTextField(margin: getMargin(top: 15), controller: paymentformvaluController, labelText: "lbl_payment_form".tr, labelStyle: theme.textTheme.titleMedium!, hintText: "lbl_payment_form".tr, hintStyle: theme.textTheme.titleMedium!);}), Container(margin: getMargin(top: 15), padding: getPadding(left: 15, top: 14, right: 15, bottom: 14), decoration: AppDecoration.outlineGray3001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [BlocSelector<TransactionNewSavingsOnetimeBloc, TransactionNewSavingsOnetimeState, TextEditingController?>(selector: (state) => state.savingtypevalueController, builder: (context, savingtypevalueController) {return CustomFloatingTextField(controller: savingtypevalueController, labelText: "lbl_saving_type".tr, labelStyle: theme.textTheme.titleMedium!, hintText: "lbl_saving_type".tr, hintStyle: theme.textTheme.titleMedium!);}), BlocSelector<TransactionNewSavingsOnetimeBloc, TransactionNewSavingsOnetimeState, TextEditingController?>(selector: (state) => state.dateController, builder: (context, dateController) {return CustomFloatingTextField(margin: getMargin(top: 14), controller: dateController, labelText: "lbl_maturity_date".tr, labelStyle: CustomTextStyles.titleMediumBluegray100, hintText: "lbl_maturity_date".tr, hintStyle: CustomTextStyles.titleMediumBluegray100);}), BlocSelector<TransactionNewSavingsOnetimeBloc, TransactionNewSavingsOnetimeState, TextEditingController?>(selector: (state) => state.rateofinterestvController, builder: (context, rateofinterestvController) {return CustomFloatingTextField(margin: getMargin(top: 14), controller: rateofinterestvController, labelText: "msg_rate_of_interest".tr, labelStyle: CustomTextStyles.labelMediumGray600, hintText: "msg_rate_of_interest".tr, hintStyle: CustomTextStyles.labelMediumGray600, contentPadding: getPadding(left: 15, right: 15, bottom: 35));}), BlocSelector<TransactionNewSavingsOnetimeBloc, TransactionNewSavingsOnetimeState, TextEditingController?>(selector: (state) => state.amountController, builder: (context, amountController) {return CustomFloatingTextField(margin: getMargin(top: 14, bottom: 2), controller: amountController, labelText: "lbl_amount".tr, labelStyle: CustomTextStyles.labelLargeMedium, hintText: "lbl_amount".tr, hintStyle: CustomTextStyles.labelLargeMedium, textInputAction: TextInputAction.done, contentPadding: getPadding(left: 19, top: 11, right: 19, bottom: 12));})])), Padding(padding: getPadding(top: 20, bottom: 20), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomElevatedButton(text: "lbl_pay".tr, margin: getMargin(right: 5), onTap: () {onTapPay(context);})), Expanded(child: CustomElevatedButton(text: "lbl_cancel".tr, margin: getMargin(left: 5), buttonStyle: CustomButtonStyles.fillBlueGray, buttonTextStyle: CustomTextStyles.titleSmallBluegray80001_2, onTap: () {onTapCancel(context);}))]))])), bottomNavigationBar: CustomBottomAppBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));})));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return "/"; case BottomBarEnum.Financialplan: return "/"; case BottomBarEnum.Transaction: return AppRoutes.withSurrenderPage; case BottomBarEnum.Advisory: return "/"; case BottomBarEnum.Monitoring: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.withSurrenderPage: return WithSurrenderPage.builder(context); default: return DefaultWidget();} } 
/// Navigates to the transactionScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the transactionScreen.
onTapLeftarrowone(BuildContext context) { NavigatorService.pushNamed(AppRoutes.transactionScreen, ); } 
/// Navigates to the transactionLoanOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the transactionLoanOneScreen.
onTapRownew(BuildContext context) { NavigatorService.pushNamed(AppRoutes.transactionLoanOneScreen, ); } 
/// Navigates to the androidLargeSeventeenScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the androidLargeSeventeenScreen.
onTapPay(BuildContext context) { NavigatorService.pushNamed(AppRoutes.androidLargeSeventeenScreen, ); } 
/// Navigates to the transactionScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the transactionScreen.
onTapCancel(BuildContext context) { NavigatorService.pushNamed(AppRoutes.transactionScreen, ); } 
 }
