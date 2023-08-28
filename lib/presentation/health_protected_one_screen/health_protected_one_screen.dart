import '../health_protected_one_screen/widgets/listcoverneeded1_item_widget.dart';
import 'bloc/health_protected_one_bloc.dart';
import 'models/health_protected_one_model.dart';
import 'models/listcoverneeded1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/custom_app_bar.dart';

class HealthProtectedOneScreen extends StatelessWidget {
  const HealthProtectedOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HealthProtectedOneBloc>(
      create: (context) => HealthProtectedOneBloc(HealthProtectedOneState(
        healthProtectedOneModelObj: HealthProtectedOneModel(),
      ))
        ..add(HealthProtectedOneInitialEvent()),
      child: HealthProtectedOneScreen(),
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
              Container(
                padding: getPadding(
                  left: 50,
                  top: 3,
                  right: 50,
                  bottom: 3,
                ),
                decoration: AppDecoration.fillGreen,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 9,
                      ),
                      child: Text(
                        "msg_health_insurance".tr,
                        style: theme.textTheme.headlineLarge,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgShield1,
                      height: getSize(190),
                      width: getSize(190),
                      margin: getMargin(
                        top: 10,
                      ),
                    ),
                    Container(
                      height: getVerticalSize(118),
                      width: getHorizontalSize(259),
                      margin: getMargin(
                        top: 16,
                      ),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              decoration: AppDecoration.outlineBlack,
                              child: Text(
                                "lbl_protected".tr.toUpperCase(),
                                style: theme.textTheme.displayMedium,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "lbl_your_family_is".tr,
                              style: theme.textTheme.headlineLarge,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgVector1,
                height: getVerticalSize(44),
                width: getHorizontalSize(359),
              ),
              Expanded(
                child: Padding(
                  padding: getPadding(
                    left: 30,
                    top: 31,
                    right: 30,
                  ),
                  child: BlocSelector<HealthProtectedOneBloc,
                      HealthProtectedOneState, HealthProtectedOneModel?>(
                    selector: (state) => state.healthProtectedOneModelObj,
                    builder: (context, healthProtectedOneModelObj) {
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
                        itemCount: healthProtectedOneModelObj
                                ?.listcoverneeded1ItemList.length ??
                            0,
                        itemBuilder: (context, index) {
                          Listcoverneeded1ItemModel model =
                              healthProtectedOneModelObj
                                      ?.listcoverneeded1ItemList[index] ??
                                  Listcoverneeded1ItemModel();
                          return Listcoverneeded1ItemWidget(
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
