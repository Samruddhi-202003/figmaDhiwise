import 'bloc/error_bloc.dart';
import 'models/error_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/custom_elevated_button.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ErrorBloc>(
      create: (context) => ErrorBloc(ErrorState(
        errorModelObj: ErrorModel(),
      ))
        ..add(ErrorInitialEvent()),
      child: ErrorScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ErrorBloc, ErrorState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
            body: Container(
              width: double.maxFinite,
              padding: getPadding(
                left: 30,
                top: 70,
                right: 30,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.img400errorbadrequestrafikiGray200,
                    height: getSize(300),
                    width: getSize(300),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Text(
                      "lbl_ooops".tr,
                      style: CustomTextStyles.displaySmallBluegray80001,
                    ),
                  ),
                  Text(
                    "lbl_page_not_found".tr,
                    style: CustomTextStyles.headlineSmallBluegray80001,
                  ),
                  Container(
                    width: getHorizontalSize(278),
                    margin: getMargin(
                      left: 11,
                      top: 12,
                      right: 10,
                    ),
                    child: Text(
                      "msg_this_page_doesn_t".tr,
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
