import '../term_protected_screen/widgets/term_protected_item_widget.dart';
import 'bloc/term_protected_bloc.dart';
import 'models/term_protected_item_model.dart';
import 'models/term_protected_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:samruddhi_s_application1/widgets/app_bar/custom_app_bar.dart';

class TermProtectedScreen extends StatelessWidget {
  const TermProtectedScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<TermProtectedBloc>(
      create: (context) => TermProtectedBloc(TermProtectedState(
        termProtectedModelObj: TermProtectedModel(),
      ))
        ..add(TermProtectedInitialEvent()),
      child: TermProtectedScreen(),
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
                        "lbl_term_insurance".tr,
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
                  child: BlocSelector<TermProtectedBloc, TermProtectedState,
                      TermProtectedModel?>(
                    selector: (state) => state.termProtectedModelObj,
                    builder: (context, termProtectedModelObj) {
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
                        itemCount: termProtectedModelObj
                                ?.termProtectedItemList.length ??
                            0,
                        itemBuilder: (context, index) {
                          TermProtectedItemModel model = termProtectedModelObj
                                  ?.termProtectedItemList[index] ??
                              TermProtectedItemModel();
                          return TermProtectedItemWidget(
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
