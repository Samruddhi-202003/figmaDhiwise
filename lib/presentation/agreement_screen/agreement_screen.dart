import 'bloc/agreement_bloc.dart';
import 'models/agreement_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';

class AgreementScreen extends StatelessWidget {
  const AgreementScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AgreementBloc>(
      create: (context) => AgreementBloc(AgreementState(
        agreementModelObj: AgreementModel(),
      ))
        ..add(AgreementInitialEvent()),
      child: AgreementScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AgreementBloc, AgreementState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
            body: Container(
              width: getHorizontalSize(340),
              padding: getPadding(
                left: 20,
                top: 4,
                right: 20,
                bottom: 4,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: getHorizontalSize(300),
                    child: Text(
                      "msg_lorem_ipsum_is_simply3".tr,
                      maxLines: 11,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.justify,
                      style: CustomTextStyles.bodySmallBluegray8000112.copyWith(
                        height: 1.33,
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(300),
                    margin: getMargin(
                      top: 19,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_why_do_we_use_it".tr,
                            style: CustomTextStyles.titleSmallBluegray80001,
                          ),
                          TextSpan(
                            text: "msg_it_is_a_long_established3".tr,
                            style: CustomTextStyles.bodySmallBluegray8000112_1,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(300),
                    margin: getMargin(
                      top: 19,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_why_do_we_use_it".tr,
                            style: CustomTextStyles.titleSmallBluegray80001,
                          ),
                          TextSpan(
                            text: "msg_it_is_a_long_established3".tr,
                            style: CustomTextStyles.bodySmallBluegray8000112_1,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(300),
                    margin: getMargin(
                      top: 18,
                      bottom: 5,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_why_do_we_use_it".tr,
                            style: CustomTextStyles.titleSmallBluegray80001,
                          ),
                          TextSpan(
                            text: "msg_it_is_a_long_established3".tr,
                            style: CustomTextStyles.bodySmallBluegray8000112_1,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.justify,
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
