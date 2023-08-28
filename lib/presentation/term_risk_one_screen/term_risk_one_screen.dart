import '../term_risk_one_screen/widgets/term_risk_one_item_widget.dart';
import 'bloc/term_risk_one_bloc.dart';
import 'models/term_risk_one_item_model.dart';
import 'models/term_risk_one_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/custom_app_bar.dart';

class TermRiskOneScreen extends StatelessWidget {
  const TermRiskOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<TermRiskOneBloc>(
      create: (context) => TermRiskOneBloc(TermRiskOneState(
        termRiskOneModelObj: TermRiskOneModel(),
      ))
        ..add(TermRiskOneInitialEvent()),
      child: TermRiskOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        appBar: CustomAppBar(
          leadingWidth: getHorizontalSize(35),
          leading: AppbarImage(
            imagePath: ImageConstant.imgLeftarrow1,
            margin: getMargin(
              left: 15,
              top: 10,
              bottom: 10,
            ),
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "lbl_insurances".tr,
          ),
          actions: [
            Container(
              margin: getMargin(
                left: 15,
                top: 13,
                right: 15,
                bottom: 13,
              ),
              padding: getPadding(
                left: 2,
                right: 2,
              ),
              decoration: AppDecoration.outlineOrange5003.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder2,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
          styleType: Style.bgFill,
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: getVerticalSize(443),
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        padding: getPadding(
                          left: 78,
                          top: 12,
                          right: 78,
                          bottom: 12,
                        ),
                        decoration: AppDecoration.fillRedA,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_term_insurance".tr,
                              style: theme.textTheme.headlineLarge,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgShield1190x190,
                              height: getSize(190),
                              width: getSize(190),
                              margin: getMargin(
                                top: 5,
                                bottom: 5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgVector1RedA700,
                      height: getVerticalSize(44),
                      width: getHorizontalSize(359),
                      alignment: Alignment.bottomCenter,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: getPadding(
                          left: 99,
                          right: 99,
                          bottom: 26,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "lbl3".tr,
                              style: theme.textTheme.headlineLarge,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgRisk21,
                              height: getVerticalSize(60),
                              width: getHorizontalSize(157),
                              margin: getMargin(
                                top: 4,
                              ),
                            ),
                            Text(
                              "lbl4".tr,
                              style: theme.textTheme.headlineLarge,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: getPadding(
                    left: 30,
                    top: 39,
                    right: 30,
                  ),
                  child: BlocSelector<TermRiskOneBloc, TermRiskOneState,
                      TermRiskOneModel?>(
                    selector: (state) => state.termRiskOneModelObj,
                    builder: (context, termRiskOneModelObj) {
                      return ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (
                          context,
                          index,
                        ) {
                          return SizedBox(
                            height: getVerticalSize(10),
                          );
                        },
                        itemCount:
                            termRiskOneModelObj?.termRiskOneItemList.length ??
                                0,
                        itemBuilder: (context, index) {
                          TermRiskOneItemModel model =
                              termRiskOneModelObj?.termRiskOneItemList[index] ??
                                  TermRiskOneItemModel();
                          return TermRiskOneItemWidget(
                            model,
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
