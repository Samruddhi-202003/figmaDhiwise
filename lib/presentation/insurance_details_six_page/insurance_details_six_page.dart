import '../insurance_details_six_page/widgets/listhealth_item_widget.dart';
import 'bloc/insurance_details_six_bloc.dart';
import 'models/insurance_details_six_model.dart';
import 'models/listhealth_item_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class InsuranceDetailsSixPage extends StatefulWidget {
  const InsuranceDetailsSixPage({Key? key})
      : super(
          key: key,
        );

  @override
  InsuranceDetailsSixPageState createState() => InsuranceDetailsSixPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<InsuranceDetailsSixBloc>(
      create: (context) => InsuranceDetailsSixBloc(InsuranceDetailsSixState(
        insuranceDetailsSixModelObj: InsuranceDetailsSixModel(),
      ))
        ..add(InsuranceDetailsSixInitialEvent()),
      child: InsuranceDetailsSixPage(),
    );
  }
}

class InsuranceDetailsSixPageState extends State<InsuranceDetailsSixPage>
    with AutomaticKeepAliveClientMixin<InsuranceDetailsSixPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Padding(
                      padding: getPadding(
                        left: 15,
                        top: 15,
                        right: 15,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: BlocSelector<
                                InsuranceDetailsSixBloc,
                                InsuranceDetailsSixState,
                                InsuranceDetailsSixModel?>(
                              selector: (state) =>
                                  state.insuranceDetailsSixModelObj,
                              builder: (context, insuranceDetailsSixModelObj) {
                                return ListView.separated(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (
                                    context,
                                    index,
                                  ) {
                                    return SizedBox(
                                      height: getVerticalSize(15),
                                    );
                                  },
                                  itemCount: insuranceDetailsSixModelObj
                                          ?.listhealthItemList.length ??
                                      0,
                                  itemBuilder: (context, index) {
                                    ListhealthItemModel model =
                                        insuranceDetailsSixModelObj
                                                ?.listhealthItemList[index] ??
                                            ListhealthItemModel();
                                    return ListhealthItemWidget(
                                      model,
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 15,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: CustomElevatedButton(
                                    text: "lbl_next".tr.toUpperCase(),
                                    margin: getMargin(
                                      right: 5,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: CustomElevatedButton(
                                    text: "lbl_add_more".tr.toUpperCase(),
                                    margin: getMargin(
                                      left: 5,
                                    ),
                                    buttonStyle: CustomButtonStyles.fillGray,
                                    buttonTextStyle: CustomTextStyles
                                        .titleSmallBluegray80001_2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
