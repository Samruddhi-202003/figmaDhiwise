import 'bloc/android_large_five_bloc.dart';
import 'models/android_large_five_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/custom_radio_button.dart';

class AndroidLargeFiveScreen extends StatelessWidget {
  const AndroidLargeFiveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeFiveBloc>(
      create: (context) => AndroidLargeFiveBloc(AndroidLargeFiveState(
        androidLargeFiveModelObj: AndroidLargeFiveModel(),
      ))
        ..add(AndroidLargeFiveInitialEvent()),
      child: AndroidLargeFiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray80001.withOpacity(0.7),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 14,
            right: 14,
          ),
          child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: theme.colorScheme.onPrimary.withOpacity(1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Container(
              height: getVerticalSize(360),
              width: getHorizontalSize(331),
              padding: getPadding(
                left: 25,
                top: 24,
                right: 25,
                bottom: 24,
              ),
              decoration: AppDecoration.fillOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: getHorizontalSize(113),
                      margin: getMargin(
                        left: 42,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_home2".tr,
                              style:
                                  CustomTextStyles.titleSmallBlack90001Medium,
                            ),
                            TextSpan(
                              text: "msg_bike_car_perso".tr,
                              style:
                                  CustomTextStyles.titleSmallGray60001.copyWith(
                                height: 3.21,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 1,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          BlocBuilder<AndroidLargeFiveBloc,
                              AndroidLargeFiveState>(
                            builder: (context, state) {
                              return state.androidLargeFiveModelObj!.radioList
                                      .isNotEmpty
                                  ? Column(
                                      children: [
                                        CustomRadioButton(
                                          value: state.androidLargeFiveModelObj
                                                  ?.radioList[0] ??
                                              "",
                                          groupValue: state.radioGroup,
                                          onChange: (value) {
                                            context
                                                .read<AndroidLargeFiveBloc>()
                                                .add(ChangeRadioButtonEvent(
                                                    value: value));
                                          },
                                        ),
                                        CustomRadioButton(
                                          value: state.androidLargeFiveModelObj
                                                  ?.radioList[1] ??
                                              "",
                                          groupValue: state.radioGroup,
                                          margin: getMargin(
                                            top: 5,
                                          ),
                                          onChange: (value) {
                                            context
                                                .read<AndroidLargeFiveBloc>()
                                                .add(ChangeRadioButtonEvent(
                                                    value: value));
                                          },
                                        ),
                                      ],
                                    )
                                  : Container();
                            },
                          ),
                          Container(
                            margin: getMargin(
                              top: 5,
                            ),
                            padding: getPadding(
                              left: 15,
                              top: 12,
                              right: 15,
                              bottom: 12,
                            ),
                            decoration: AppDecoration.outlineGray300.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Container(
                              padding: getPadding(
                                all: 3,
                              ),
                              decoration: AppDecoration.fillGray300.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Container(
                                height: getSize(10),
                                width: getSize(10),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimary
                                      .withOpacity(1),
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 5,
                            ),
                            child: BlocSelector<AndroidLargeFiveBloc,
                                AndroidLargeFiveState, String?>(
                              selector: (state) => state.radioGroup1,
                              builder: (context, radioGroup1) {
                                return CustomRadioButton(
                                  value: "",
                                  groupValue: radioGroup1,
                                  margin: getMargin(
                                    top: 5,
                                  ),
                                  onChange: (value) {
                                    context.read<AndroidLargeFiveBloc>().add(
                                        ChangeRadioButton1Event(value: value));
                                  },
                                );
                              },
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              top: 5,
                            ),
                            padding: getPadding(
                              left: 15,
                              top: 12,
                              right: 15,
                              bottom: 12,
                            ),
                            decoration: AppDecoration.outlineGray300.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Container(
                              padding: getPadding(
                                all: 3,
                              ),
                              decoration: AppDecoration.fillGray300.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Container(
                                height: getSize(10),
                                width: getSize(10),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimary
                                      .withOpacity(1),
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: BlocBuilder<AndroidLargeFiveBloc,
                        AndroidLargeFiveState>(
                      builder: (context, state) {
                        return state
                                .androidLargeFiveModelObj!.radioList1.isNotEmpty
                            ? Column(
                                children: [
                                  CustomRadioButton(
                                    value: state.androidLargeFiveModelObj
                                            ?.radioList1[0] ??
                                        "",
                                    groupValue: state.homebike,
                                    margin: getMargin(
                                      top: 270,
                                    ),
                                    onChange: (value) {
                                      context.read<AndroidLargeFiveBloc>().add(
                                          ChangeRadioButton2Event(
                                              value: value));
                                    },
                                  ),
                                  CustomRadioButton(
                                    value: state.androidLargeFiveModelObj
                                            ?.radioList1[1] ??
                                        "",
                                    groupValue: state.homebike,
                                    margin: getMargin(
                                      bottom: 270,
                                    ),
                                    onChange: (value) {
                                      context.read<AndroidLargeFiveBloc>().add(
                                          ChangeRadioButton2Event(
                                              value: value));
                                    },
                                  ),
                                ],
                              )
                            : Container();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
