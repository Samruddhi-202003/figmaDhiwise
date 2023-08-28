import 'bloc/with_surrender_container_bloc.dart';import 'models/with_surrender_container_model.dart';import 'package:flutter/material.dart';import 'package:samruddhi_s_application1/core/app_export.dart';import 'package:samruddhi_s_application1/presentation/with_surrender_page/with_surrender_page.dart';import 'package:samruddhi_s_application1/widgets/custom_bottom_app_bar.dart';
// ignore_for_file: must_be_immutable
class WithSurrenderContainerScreen extends StatelessWidget {WithSurrenderContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<WithSurrenderContainerBloc>(create: (context) => WithSurrenderContainerBloc(WithSurrenderContainerState(withSurrenderContainerModelObj: WithSurrenderContainerModel()))..add(WithSurrenderContainerInitialEvent()), child: WithSurrenderContainerScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<WithSurrenderContainerBloc, WithSurrenderContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimary.withOpacity(1), body: Navigator(key: navigatorKey, initialRoute: AppRoutes.withSurrenderPage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: CustomBottomAppBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));})));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return "/"; case BottomBarEnum.Financialplan: return "/"; case BottomBarEnum.Transaction: return AppRoutes.withSurrenderPage; case BottomBarEnum.Advisory: return "/"; case BottomBarEnum.Monitoring: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.withSurrenderPage: return WithSurrenderPage.builder(context); default: return DefaultWidget();} } 
 }
