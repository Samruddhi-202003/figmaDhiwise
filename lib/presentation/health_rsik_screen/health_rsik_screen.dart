import '../health_rsik_screen/widgets/health_rsik_item_widget.dart';
import 'bloc/health_rsik_bloc.dart';
import 'models/health_rsik_item_model.dart';
import 'models/health_rsik_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/custom_app_bar.dart';

class HealthRsikScreen extends StatelessWidget {
  const HealthRsikScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HealthRsikBloc>(
      create: (context) => HealthRsikBloc(HealthRsikState(
        healthRsikModelObj: HealthRsikModel(),
      ))
        ..add(HealthRsikInitialEvent()),
      child: HealthRsikScreen(),
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
                          left: 68,
                          top: 12,
                          right: 68,
                          bottom: 12,
                        ),
                        decoration: AppDecoration.fillRedA70002,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "msg_health_insurance".tr,
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
                          left: 73,
                          right: 73,
                          bottom: 25,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "lbl22".tr,
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
                              "lbl23".tr,
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
                  child: BlocSelector<HealthRsikBloc, HealthRsikState,
                      HealthRsikModel?>(
                    selector: (state) => state.healthRsikModelObj,
                    builder: (context, healthRsikModelObj) {
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
                            healthRsikModelObj?.healthRsikItemList.length ?? 0,
                        itemBuilder: (context, index) {
                          HealthRsikItemModel model =
                              healthRsikModelObj?.healthRsikItemList[index] ??
                                  HealthRsikItemModel();
                          return HealthRsikItemWidget(
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
