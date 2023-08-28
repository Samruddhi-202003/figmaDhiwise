import '../transaction_screen/widgets/transaction_item_widget.dart';import 'bloc/transaction_bloc.dart';import 'models/transaction_item_model.dart';import 'models/transaction_model.dart';import 'package:flutter/material.dart';import 'package:samruddhi_s_application1/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/with_surrender_page/with_surrender_page.dart';import 'package:samruddhi_s_application1/widgets/app_bar/appbar_image.dart';import 'package:samruddhi_s_application1/widgets/app_bar/appbar_subtitle_2.dart';import 'package:samruddhi_s_application1/widgets/app_bar/appbar_title.dart';import 'package:samruddhi_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:samruddhi_s_application1/widgets/custom_bottom_app_bar.dart';
// ignore_for_file: must_be_immutable
class TransactionScreen extends StatelessWidget {TransactionScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<TransactionBloc>(create: (context) => TransactionBloc(TransactionState(transactionModelObj: TransactionModel()))..add(TransactionInitialEvent()), child: TransactionScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimary.withOpacity(1), appBar: CustomAppBar(leadingWidth: getHorizontalSize(35), leading: AppbarImage(imagePath: ImageConstant.imgLeftarrow1, margin: getMargin(left: 15, top: 10, bottom: 10), onTap: () {onTapLeftarrowone(context);}), centerTitle: true, title: AppbarTitle(text: "lbl_add_transaction".tr), actions: [Container(margin: getMargin(left: 15, top: 13, right: 15, bottom: 13), padding: getPadding(left: 2, right: 2), decoration: AppDecoration.outlineOrange5003.copyWith(borderRadius: BorderRadiusStyle.roundedBorder2), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(height: getSize(10), width: getSize(10), margin: getMargin(top: 2, bottom: 2), decoration: BoxDecoration(color: appTheme.orange500, borderRadius: BorderRadius.circular(getHorizontalSize(2)))), AppbarSubtitle2(text: "lbl7".tr.toUpperCase(), margin: getMargin(left: 4, right: 5, bottom: 1))]))], styleType: Style.bgFill), body: Container(width: double.maxFinite, padding: getPadding(left: 20, top: 15, right: 20, bottom: 15), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [GestureDetector(onTap: () {onTapRowgoaloneone(context);}, child: Container(padding: getPadding(top: 25, bottom: 25), decoration: AppDecoration.outlineOrange5002.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgGoal1, height: getSize(70), width: getSize(70)), Padding(padding: getPadding(top: 16, bottom: 20), child: Text("lbl_add_goals".tr, style: theme.textTheme.titleLarge))]))), Expanded(child: Padding(padding: getPadding(top: 20, bottom: 20), child: BlocSelector<TransactionBloc, TransactionState, TransactionModel?>(selector: (state) => state.transactionModelObj, builder: (context, transactionModelObj) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: getVerticalSize(186), crossAxisCount: 2, mainAxisSpacing: getHorizontalSize(20), crossAxisSpacing: getHorizontalSize(20)), physics: BouncingScrollPhysics(), itemCount: transactionModelObj?.transactionItemList.length ?? 0, itemBuilder: (context, index) {TransactionItemModel model = transactionModelObj?.transactionItemList[index] ?? TransactionItemModel(); return TransactionItemWidget(model, onTapColumninsurance: () {onTapColumninsurance(context);});});})))])), bottomNavigationBar: CustomBottomAppBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}))); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return "/"; case BottomBarEnum.Financialplan: return "/"; case BottomBarEnum.Transaction: return AppRoutes.withSurrenderPage; case BottomBarEnum.Advisory: return "/"; case BottomBarEnum.Monitoring: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.withSurrenderPage: return WithSurrenderPage.builder(context); default: return DefaultWidget();} } 
/// Navigates to the transactionLoanOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the transactionLoanOneScreen.
onTapColumninsurance(BuildContext context) { NavigatorService.pushNamed(AppRoutes.transactionLoanOneScreen); } 
/// Navigates to the dashboardScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the dashboardScreen.
onTapLeftarrowone(BuildContext context) { NavigatorService.pushNamed(AppRoutes.dashboardScreen, ); } 
/// Navigates to the transactionGoalScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the transactionGoalScreen.
onTapRowgoaloneone(BuildContext context) { NavigatorService.pushNamed(AppRoutes.transactionGoalScreen, ); } 
 }
