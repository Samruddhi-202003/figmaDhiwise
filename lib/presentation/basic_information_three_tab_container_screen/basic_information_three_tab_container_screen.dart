import 'bloc/basic_information_three_tab_container_bloc.dart';
import 'models/basic_information_three_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/presentation/edit_basic_profile_page/edit_basic_profile_page.dart';
import 'package:samruddhi_s_application1/presentation/edit_loan_page/edit_loan_page.dart';
import 'package:samruddhi_s_application1/presentation/insurance_details_seven_page/insurance_details_seven_page.dart';
import 'package:samruddhi_s_application1/presentation/number_one_page/number_one_page.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/custom_app_bar.dart';

class BasicInformationThreeTabContainerScreen extends StatefulWidget {
  const BasicInformationThreeTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  BasicInformationThreeTabContainerScreenState createState() =>
      BasicInformationThreeTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<BasicInformationThreeTabContainerBloc>(
      create: (context) => BasicInformationThreeTabContainerBloc(
          BasicInformationThreeTabContainerState(
        basicInformationThreeTabContainerModelObj:
            BasicInformationThreeTabContainerModel(),
      ))
        ..add(BasicInformationThreeTabContainerInitialEvent()),
      child: BasicInformationThreeTabContainerScreen(),
    );
  }
}

class BasicInformationThreeTabContainerScreenState
    extends State<BasicInformationThreeTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<BasicInformationThreeTabContainerBloc,
        BasicInformationThreeTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
            appBar: CustomAppBar(
              height: getVerticalSize(50),
              leadingWidth: getHorizontalSize(38),
              leading: AppbarImage(
                imagePath: ImageConstant.imgMenu1,
                margin: getMargin(
                  left: 12,
                  top: 12,
                  bottom: 12,
                ),
              ),
              centerTitle: true,
              title: AppbarImage1(
                imagePath: ImageConstant.imgBadibahenlogomascot0105,
              ),
              actions: [
                Container(
                  margin: getMargin(
                    left: 15,
                    top: 18,
                    right: 15,
                    bottom: 18,
                  ),
                  padding: getPadding(
                    left: 2,
                    right: 2,
                  ),
                  decoration: AppDecoration.outlineOrange5003.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder2,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: getSize(10),
                        width: getSize(10),
                        margin: getMargin(
                          top: 2,
                          bottom: 2,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.orange500,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(2),
                          ),
                        ),
                      ),
                      AppbarSubtitle2(
                        text: "lbl7".tr.toUpperCase(),
                        margin: getMargin(
                          left: 4,
                          right: 5,
                          bottom: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
              styleType: Style.bgShadow,
            ),
            body: SizedBox(
              width: mediaQueryData.size.width,
              child: SingleChildScrollView(
                padding: getPadding(
                  top: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: getVerticalSize(28),
                      width: getHorizontalSize(331),
                      child: TabBar(
                        controller: tabviewController,
                        isScrollable: true,
                        labelColor: theme.colorScheme.onPrimary.withOpacity(1),
                        labelStyle: TextStyle(
                          fontSize: getFontSize(13),
                          fontFamily: 'Hind',
                          fontWeight: FontWeight.w400,
                        ),
                        unselectedLabelColor: appTheme.blueGray80001,
                        unselectedLabelStyle: TextStyle(
                          fontSize: getFontSize(13),
                          fontFamily: 'Hind',
                          fontWeight: FontWeight.w400,
                        ),
                        indicator: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(3),
                          ),
                        ),
                        tabs: [
                          Tab(
                            child: Text(
                              "lbl_basic_profile".tr,
                            ),
                          ),
                          Tab(
                            child: Text(
                              "lbl_insurance".tr,
                            ),
                          ),
                          Tab(
                            child: Text(
                              "lbl_loan2".tr,
                            ),
                          ),
                          Tab(
                            child: Text(
                              "lbl_number".tr,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: getVerticalSize(682),
                      child: TabBarView(
                        controller: tabviewController,
                        children: [
                          EditBasicProfilePage.builder(context),
                          InsuranceDetailsSevenPage.builder(context),
                          EditLoanPage.builder(context),
                          NumberOnePage.builder(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
