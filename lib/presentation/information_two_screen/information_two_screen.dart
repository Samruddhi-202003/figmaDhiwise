import 'bloc/information_two_bloc.dart';
import 'models/information_two_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class InformationTwoScreen extends StatelessWidget {
  const InformationTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InformationTwoBloc>(
      create: (context) => InformationTwoBloc(InformationTwoState(
        informationTwoModelObj: InformationTwoModel(),
      ))
        ..add(InformationTwoInitialEvent()),
      child: InformationTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<InformationTwoBloc, InformationTwoState>(
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
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: getVerticalSize(192),
                            width: getHorizontalSize(250),
                            margin: getMargin(
                              bottom: 145,
                            ),
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgVectorDeepOrange200,
                                  height: getVerticalSize(22),
                                  width: getHorizontalSize(250),
                                  alignment: Alignment.bottomCenter,
                                ),
                                CustomImageView(
                                  svgPath:
                                      ImageConstant.imgGroupDeepOrangeA10001,
                                  height: getSize(183),
                                  width: getSize(183),
                                  alignment: Alignment.topRight,
                                  margin: getMargin(
                                    right: 4,
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgGroupAmber600,
                                  height: getVerticalSize(42),
                                  width: getHorizontalSize(108),
                                  alignment: Alignment.bottomRight,
                                  margin: getMargin(
                                    right: 13,
                                    bottom: 6,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    height: getVerticalSize(190),
                                    width: getHorizontalSize(83),
                                    margin: getMargin(
                                      right: 20,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CustomImageView(
                                          svgPath:
                                              ImageConstant.imgVectorRed3005x4,
                                          height: getVerticalSize(5),
                                          width: getHorizontalSize(4),
                                          alignment: Alignment.bottomRight,
                                          margin: getMargin(
                                            right: 1,
                                            bottom: 6,
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath:
                                              ImageConstant.imgVectorRed3005x4,
                                          height: getSize(5),
                                          width: getSize(5),
                                          alignment: Alignment.bottomRight,
                                          margin: getMargin(
                                            right: 34,
                                            bottom: 4,
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgLightbulb,
                                          height: getVerticalSize(23),
                                          width: getHorizontalSize(22),
                                          alignment: Alignment.topRight,
                                          margin: getMargin(
                                            right: 6,
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgFire,
                                          height: getVerticalSize(25),
                                          width: getHorizontalSize(19),
                                          alignment: Alignment.topRight,
                                          margin: getMargin(
                                            top: 6,
                                            right: 14,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                            height: getVerticalSize(103),
                                            width: getHorizontalSize(40),
                                            margin: getMargin(
                                              bottom: 10,
                                            ),
                                            child: Stack(
                                              alignment: Alignment.bottomLeft,
                                              children: [
                                                CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgVectorGray90001,
                                                  height: getVerticalSize(103),
                                                  width: getHorizontalSize(40),
                                                  alignment: Alignment.center,
                                                ),
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgArrowup,
                                                  height: getVerticalSize(86),
                                                  width: getHorizontalSize(12),
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  margin: getMargin(
                                                    left: 6,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            height: getVerticalSize(11),
                                            width: getHorizontalSize(24),
                                            margin: getMargin(
                                              left: 26,
                                              top: 30,
                                            ),
                                            child: Stack(
                                              alignment: Alignment.bottomRight,
                                              children: [
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgTicket,
                                                  height: getVerticalSize(11),
                                                  width: getHorizontalSize(24),
                                                  alignment: Alignment.center,
                                                ),
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgVector,
                                                  height: getVerticalSize(9),
                                                  width: getHorizontalSize(19),
                                                  alignment:
                                                      Alignment.bottomRight,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgMap,
                                          height: getVerticalSize(51),
                                          width: getHorizontalSize(33),
                                          alignment: Alignment.topRight,
                                          margin: getMargin(
                                            top: 27,
                                            right: 2,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            height: getSize(36),
                                            width: getSize(36),
                                            margin: getMargin(
                                              top: 24,
                                            ),
                                            child: Stack(
                                              alignment: Alignment.centerLeft,
                                              children: [
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgClose,
                                                  height: getSize(36),
                                                  width: getSize(36),
                                                  alignment: Alignment.center,
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Row(
                                                    children: [
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgVectorOrange30001,
                                                        height:
                                                            getVerticalSize(10),
                                                        width:
                                                            getHorizontalSize(
                                                                1),
                                                        margin: getMargin(
                                                          top: 12,
                                                          bottom: 12,
                                                        ),
                                                      ),
                                                      Container(
                                                        height:
                                                            getVerticalSize(35),
                                                        width:
                                                            getHorizontalSize(
                                                                30),
                                                        margin: getMargin(
                                                          left: 1,
                                                        ),
                                                        child: Stack(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          children: [
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              child: SizedBox(
                                                                height:
                                                                    getVerticalSize(
                                                                        20),
                                                                child:
                                                                    VerticalDivider(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          1),
                                                                  thickness:
                                                                      getVerticalSize(
                                                                          1),
                                                                  color: appTheme
                                                                      .orange30001,
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                  left: 13,
                                                                ),
                                                                child: SizedBox(
                                                                  height:
                                                                      getVerticalSize(
                                                                          35),
                                                                  child:
                                                                      VerticalDivider(
                                                                    width:
                                                                        getHorizontalSize(
                                                                            1),
                                                                    thickness:
                                                                        getVerticalSize(
                                                                            1),
                                                                    color: appTheme
                                                                        .orange30001,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgMapOrange30001,
                                                              height:
                                                                  getVerticalSize(
                                                                      33),
                                                              width:
                                                                  getHorizontalSize(
                                                                      23),
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: SizedBox(
                                                                height:
                                                                    getSize(30),
                                                                width:
                                                                    getSize(30),
                                                                child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  children: [
                                                                    CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgCloseOrangeA20001,
                                                                      height:
                                                                          getSize(
                                                                              30),
                                                                      width:
                                                                          getSize(
                                                                              30),
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .topLeft,
                                                                      child:
                                                                          SizedBox(
                                                                        height:
                                                                            getVerticalSize(18),
                                                                        width: getHorizontalSize(
                                                                            27),
                                                                        child:
                                                                            Stack(
                                                                          alignment:
                                                                              Alignment.bottomCenter,
                                                                          children: [
                                                                            CustomImageView(
                                                                              svgPath: ImageConstant.imgCheckmark,
                                                                              height: getVerticalSize(14),
                                                                              width: getHorizontalSize(23),
                                                                              alignment: Alignment.topLeft,
                                                                            ),
                                                                            CustomImageView(
                                                                              svgPath: ImageConstant.imgCheckmarkOrange300,
                                                                              height: getVerticalSize(15),
                                                                              width: getHorizontalSize(27),
                                                                              alignment: Alignment.bottomCenter,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgCheckmarkOrange30016x23,
                                                              height:
                                                                  getVerticalSize(
                                                                      16),
                                                              width:
                                                                  getHorizontalSize(
                                                                      23),
                                                              alignment: Alignment
                                                                  .bottomRight,
                                                              margin: getMargin(
                                                                bottom: 3,
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Text(
                                                                "lbl6".tr,
                                                                style: CustomTextStyles
                                                                    .headlineSmallInter,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath:
                                              ImageConstant.imgVectorRed300,
                                          height: getVerticalSize(7),
                                          width: getHorizontalSize(20),
                                          alignment: Alignment.topLeft,
                                          margin: getMargin(
                                            left: 12,
                                            top: 54,
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath:
                                              ImageConstant.imgCheckmarkPrimary,
                                          height: getVerticalSize(33),
                                          width: getHorizontalSize(54),
                                          alignment: Alignment.topRight,
                                          margin: getMargin(
                                            top: 28,
                                            right: 2,
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant
                                              .imgCheckmarkPrimary42x16,
                                          height: getVerticalSize(42),
                                          width: getHorizontalSize(16),
                                          alignment: Alignment.topRight,
                                          margin: getMargin(
                                            top: 36,
                                            right: 2,
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant
                                              .imgCheckmarkPink90001,
                                          height: getVerticalSize(29),
                                          width: getHorizontalSize(54),
                                          alignment: Alignment.topRight,
                                          margin: getMargin(
                                            top: 32,
                                            right: 2,
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath:
                                              ImageConstant.imgNotification,
                                          height: getVerticalSize(7),
                                          width: getHorizontalSize(8),
                                          alignment: Alignment.bottomRight,
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgLaptop,
                                          height: getVerticalSize(6),
                                          width: getHorizontalSize(13),
                                          alignment: Alignment.bottomCenter,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    height: getVerticalSize(106),
                                    width: getHorizontalSize(103),
                                    margin: getMargin(
                                      left: 21,
                                      bottom: 4,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant.imgLocation,
                                          height: getVerticalSize(20),
                                          width: getHorizontalSize(21),
                                          alignment: Alignment.bottomRight,
                                          margin: getMargin(
                                            right: 20,
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgLocation,
                                          height: getVerticalSize(21),
                                          width: getHorizontalSize(23),
                                          alignment: Alignment.bottomLeft,
                                          margin: getMargin(
                                            left: 11,
                                          ),
                                        ),
                                        CustomImageView(
                                          svgPath:
                                              ImageConstant.imgLocationPrimary,
                                          height: getVerticalSize(12),
                                          width: getHorizontalSize(9),
                                          alignment: Alignment.topRight,
                                          margin: getMargin(
                                            top: 32,
                                            right: 14,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Container(
                                            margin: getMargin(
                                              bottom: 4,
                                            ),
                                            padding: getPadding(
                                              left: 15,
                                              top: 5,
                                              right: 15,
                                              bottom: 5,
                                            ),
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: fs.Svg(
                                                  ImageConstant.imgGroup376,
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: getVerticalSize(16),
                                                  width: getHorizontalSize(14),
                                                  margin: getMargin(
                                                    right: 8,
                                                  ),
                                                  child: Stack(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    children: [
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgLocationPrimary16x12,
                                                        height:
                                                            getVerticalSize(16),
                                                        width:
                                                            getHorizontalSize(
                                                                12),
                                                        alignment: Alignment
                                                            .centerLeft,
                                                      ),
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgVolume,
                                                        height:
                                                            getVerticalSize(16),
                                                        width:
                                                            getHorizontalSize(
                                                                7),
                                                        alignment: Alignment
                                                            .centerRight,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  margin: getMargin(
                                                    top: 1,
                                                    bottom: 32,
                                                  ),
                                                  padding: getPadding(
                                                    left: 3,
                                                    top: 2,
                                                    right: 3,
                                                    bottom: 2,
                                                  ),
                                                  decoration: AppDecoration
                                                      .fillBlack
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder5,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgVectorRed100,
                                                        height: getSize(1),
                                                        width: getSize(1),
                                                        margin: getMargin(
                                                          top: 1,
                                                          bottom: 6,
                                                        ),
                                                      ),
                                                      Container(
                                                        height: getSize(3),
                                                        width: getSize(3),
                                                        margin: getMargin(
                                                          bottom: 5,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              appTheme.red100,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            getHorizontalSize(
                                                                1),
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
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                            height: getVerticalSize(21),
                                            width: getHorizontalSize(15),
                                            margin: getMargin(
                                              bottom: 30,
                                            ),
                                            child: Stack(
                                              alignment: Alignment.centerRight,
                                              children: [
                                                CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgVolumePink400,
                                                  height: getVerticalSize(21),
                                                  width: getHorizontalSize(15),
                                                  alignment: Alignment.center,
                                                ),
                                                CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgVolumePrimary,
                                                  height: getVerticalSize(21),
                                                  width: getHorizontalSize(8),
                                                  alignment:
                                                      Alignment.centerRight,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 29,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: SizedBox(
                                                    height: getSize(31),
                                                    width: getSize(31),
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      children: [
                                                        CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgClose,
                                                          height: getSize(31),
                                                          width: getSize(31),
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Row(
                                                            children: [
                                                              CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgVectorOrange30001,
                                                                height:
                                                                    getVerticalSize(
                                                                        9),
                                                                width:
                                                                    getHorizontalSize(
                                                                        1),
                                                                margin:
                                                                    getMargin(
                                                                  top: 11,
                                                                  bottom: 11,
                                                                ),
                                                              ),
                                                              Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        31),
                                                                width:
                                                                    getHorizontalSize(
                                                                        27),
                                                                margin:
                                                                    getMargin(
                                                                  left: 1,
                                                                ),
                                                                child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerRight,
                                                                      child:
                                                                          SizedBox(
                                                                        height:
                                                                            getVerticalSize(18),
                                                                        child:
                                                                            VerticalDivider(
                                                                          width:
                                                                              getHorizontalSize(1),
                                                                          thickness:
                                                                              getVerticalSize(1),
                                                                          color:
                                                                              appTheme.orange30001,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft,
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            getPadding(
                                                                          left:
                                                                              11,
                                                                        ),
                                                                        child:
                                                                            SizedBox(
                                                                          height:
                                                                              getVerticalSize(31),
                                                                          child:
                                                                              VerticalDivider(
                                                                            width:
                                                                                getHorizontalSize(1),
                                                                            thickness:
                                                                                getVerticalSize(1),
                                                                            color:
                                                                                appTheme.orange30001,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgMapOrange30001,
                                                                      height:
                                                                          getVerticalSize(
                                                                              29),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              20),
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child:
                                                                          SizedBox(
                                                                        height:
                                                                            getSize(27),
                                                                        width: getSize(
                                                                            27),
                                                                        child:
                                                                            Stack(
                                                                          alignment:
                                                                              Alignment.topLeft,
                                                                          children: [
                                                                            CustomImageView(
                                                                              svgPath: ImageConstant.imgCloseOrangeA20001,
                                                                              height: getSize(27),
                                                                              width: getSize(27),
                                                                              alignment: Alignment.center,
                                                                            ),
                                                                            Align(
                                                                              alignment: Alignment.topLeft,
                                                                              child: SizedBox(
                                                                                height: getVerticalSize(16),
                                                                                width: getHorizontalSize(24),
                                                                                child: Stack(
                                                                                  alignment: Alignment.bottomCenter,
                                                                                  children: [
                                                                                    CustomImageView(
                                                                                      svgPath: ImageConstant.imgCheckmark,
                                                                                      height: getVerticalSize(12),
                                                                                      width: getHorizontalSize(20),
                                                                                      alignment: Alignment.topLeft,
                                                                                    ),
                                                                                    CustomImageView(
                                                                                      svgPath: ImageConstant.imgCheckmarkOrange300,
                                                                                      height: getVerticalSize(13),
                                                                                      width: getHorizontalSize(24),
                                                                                      alignment: Alignment.bottomCenter,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgCheckmarkOrange30016x23,
                                                                      height:
                                                                          getVerticalSize(
                                                                              15),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              20),
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomRight,
                                                                      margin:
                                                                          getMargin(
                                                                        bottom:
                                                                            3,
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerRight,
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            getPadding(
                                                                          right:
                                                                              7,
                                                                        ),
                                                                        child:
                                                                            Text(
                                                                          "lbl6"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.titleMediumInterOnPrimary,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgGroupPrimary5x30,
                                                  height: getVerticalSize(5),
                                                  width: getHorizontalSize(30),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
                                    top: 8,
                                    bottom: 8,
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
