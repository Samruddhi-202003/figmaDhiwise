import 'bloc/information_one_bloc.dart';
import 'models/information_one_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class InformationOneScreen extends StatelessWidget {
  const InformationOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InformationOneBloc>(
      create: (context) => InformationOneBloc(InformationOneState(
        informationOneModelObj: InformationOneModel(),
      ))
        ..add(InformationOneInitialEvent()),
      child: InformationOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<InformationOneBloc, InformationOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: getVerticalSize(612),
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgBgplain1,
                          height: getVerticalSize(612),
                          width: getHorizontalSize(360),
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgGroupDeepOrange50,
                          height: getVerticalSize(250),
                          width: getHorizontalSize(227),
                          alignment: Alignment.bottomCenter,
                          margin: getMargin(
                            bottom: 117,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getVerticalSize(158),
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgBgplain2,
                          height: getVerticalSize(158),
                          width: getHorizontalSize(360),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: getPadding(
                              left: 35,
                              top: 93,
                              right: 35,
                              bottom: 41,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomIconButton(
                                  height: getSize(24),
                                  width: getSize(24),
                                  padding: getPadding(
                                    all: 7,
                                  ),
                                  decoration: IconButtonStyleHelper.fillPrimary,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgGroup2,
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(8),
                                  margin: getMargin(
                                    top: 9,
                                    bottom: 7,
                                  ),
                                  child: AnimatedSmoothIndicator(
                                    activeIndex: 0,
                                    count: 3,
                                    effect: ScrollingDotsEffect(
                                      spacing: 10,
                                      activeDotColor: theme.colorScheme.primary,
                                      dotColor: appTheme.gray300,
                                      dotHeight: getVerticalSize(8),
                                      dotWidth: getHorizontalSize(8),
                                    ),
                                  ),
                                ),
                                CustomIconButton(
                                  height: getSize(24),
                                  width: getSize(24),
                                  padding: getPadding(
                                    all: 5,
                                  ),
                                  decoration: IconButtonStyleHelper.fillOrange,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgGroup3,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
