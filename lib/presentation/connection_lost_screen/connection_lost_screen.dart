import 'bloc/connection_lost_bloc.dart';
import 'models/connection_lost_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/custom_elevated_button.dart';

class ConnectionLostScreen extends StatelessWidget {
  const ConnectionLostScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ConnectionLostBloc>(
      create: (context) => ConnectionLostBloc(ConnectionLostState(
        connectionLostModelObj: ConnectionLostModel(),
      ))
        ..add(ConnectionLostInitialEvent()),
      child: ConnectionLostScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ConnectionLostBloc, ConnectionLostState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
            body: Container(
              width: double.maxFinite,
              padding: getPadding(
                left: 50,
                right: 50,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgGroup256,
                    height: getVerticalSize(231),
                    width: getHorizontalSize(42),
                  ),
                  SizedBox(
                    height: getVerticalSize(137),
                    width: getHorizontalSize(118),
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: getPadding(
                              top: 21,
                            ),
                            child: SizedBox(
                              child: Divider(),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 25,
                            ),
                            child: SizedBox(
                              height: getVerticalSize(23),
                              child: VerticalDivider(
                                width: getHorizontalSize(4),
                                thickness: getVerticalSize(4),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: getPadding(
                              bottom: 20,
                            ),
                            child: SizedBox(
                              child: Divider(),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: getPadding(
                              right: 26,
                            ),
                            child: SizedBox(
                              height: getVerticalSize(23),
                              child: VerticalDivider(
                                width: getHorizontalSize(3),
                                thickness: getVerticalSize(3),
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgScissors1,
                          height: getSize(101),
                          width: getSize(101),
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgPlug1,
                    height: getVerticalSize(79),
                    width: getHorizontalSize(60),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 43,
                    ),
                    child: Text(
                      "lbl_whoops".tr,
                      style: CustomTextStyles.displaySmallBluegray80001,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(259),
                    margin: getMargin(
                      top: 8,
                    ),
                    child: Text(
                      "msg_we_couldn_t_connect".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleMediumMedium.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  CustomElevatedButton(
                    width: getHorizontalSize(180),
                    text: "lbl_go_back_to_home".tr,
                    margin: getMargin(
                      top: 39,
                      bottom: 5,
                    ),
                    buttonStyle: CustomButtonStyles.outlineBlack,
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
