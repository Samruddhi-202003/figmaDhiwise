import '../loan_page/widgets/loan_item_widget.dart';
import 'bloc/loan_bloc.dart';
import 'models/loan_item_model.dart';
import 'models/loan_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/custom_checkbox_button.dart';
import 'package:samruddhi_s_application1/widgets/custom_elevated_button.dart';
import 'package:samruddhi_s_application1/widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class LoanPage extends StatefulWidget {
  const LoanPage({Key? key})
      : super(
          key: key,
        );

  @override
  LoanPageState createState() => LoanPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LoanBloc>(
      create: (context) => LoanBloc(LoanState(
        loanModelObj: LoanModel(),
      ))
        ..add(LoanInitialEvent()),
      child: LoanPage(),
    );
  }
}

class LoanPageState extends State<LoanPage>
    with AutomaticKeepAliveClientMixin<LoanPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 15,
                    top: 13,
                    right: 15,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: getVerticalSize(52),
                        width: getHorizontalSize(330),
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                margin: getMargin(
                                  top: 8,
                                ),
                                padding: getPadding(
                                  left: 10,
                                  top: 7,
                                  right: 10,
                                  bottom: 7,
                                ),
                                decoration:
                                    AppDecoration.outlineOrange5001.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 6,
                                        top: 3,
                                      ),
                                      child: Text(
                                        "msg_do_you_have_any".tr,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ),
                                    BlocSelector<LoanBloc, LoanState, bool?>(
                                      selector: (state) => state.yes,
                                      builder: (context, yes) {
                                        return CustomCheckboxButton(
                                          text: "lbl_yes".tr,
                                          value: yes,
                                          margin: getMargin(
                                            top: 2,
                                          ),
                                          padding: getPadding(
                                            left: 5,
                                            top: 2,
                                            right: 7,
                                            bottom: 2,
                                          ),
                                          onChange: (value) {
                                            context.read<LoanBloc>().add(
                                                ChangeCheckBoxEvent(
                                                    value: value));
                                          },
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                height: getVerticalSize(3),
                                width: getHorizontalSize(31),
                                margin: getMargin(
                                  left: 10,
                                  top: 7,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: getPadding(
                                  left: 15,
                                ),
                                child: Text(
                                  "lbl_loan2".tr,
                                  style: theme.textTheme.labelMedium,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          width: double.maxFinite,
                          child: Container(
                            margin: getMargin(
                              top: 15,
                            ),
                            padding: getPadding(
                              left: 15,
                              top: 13,
                              right: 15,
                              bottom: 13,
                            ),
                            decoration: AppDecoration.outlineGray3001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: BlocSelector<LoanBloc, LoanState,
                                      LoanModel?>(
                                    selector: (state) => state.loanModelObj,
                                    builder: (context, loanModelObj) {
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
                                        itemCount:
                                            loanModelObj?.loanItemList.length ??
                                                0,
                                        itemBuilder: (context, index) {
                                          LoanItemModel model = loanModelObj
                                                  ?.loanItemList[index] ??
                                              LoanItemModel();
                                          return LoanItemWidget(
                                            model,
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                                BlocSelector<LoanBloc, LoanState,
                                    TextEditingController?>(
                                  selector: (state) => state.priceController,
                                  builder: (context, priceController) {
                                    return CustomFloatingTextField(
                                      margin: getMargin(
                                        top: 15,
                                      ),
                                      controller: priceController,
                                      labelText:
                                          "msg_easy_monthly_installment".tr,
                                      labelStyle:
                                          CustomTextStyles.labelLargeMedium,
                                      hintText:
                                          "msg_easy_monthly_installment".tr,
                                      hintStyle:
                                          CustomTextStyles.labelLargeMedium,
                                      contentPadding: getPadding(
                                        left: 20,
                                        right: 20,
                                        bottom: 12,
                                      ),
                                      borderDecoration:
                                          FloatingTextFormFieldStyleHelper
                                              .underLine,
                                    );
                                  },
                                ),
                                BlocSelector<LoanBloc, LoanState,
                                    TextEditingController?>(
                                  selector: (state) => state.priceController1,
                                  builder: (context, priceController1) {
                                    return CustomFloatingTextField(
                                      margin: getMargin(
                                        top: 15,
                                      ),
                                      controller: priceController1,
                                      labelText: "msg_current_value_of".tr,
                                      labelStyle:
                                          CustomTextStyles.labelLargeMedium,
                                      hintText: "msg_current_value_of".tr,
                                      hintStyle:
                                          CustomTextStyles.labelLargeMedium,
                                      textInputAction: TextInputAction.done,
                                      contentPadding: getPadding(
                                        left: 20,
                                        right: 20,
                                        bottom: 12,
                                      ),
                                      borderDecoration:
                                          FloatingTextFormFieldStyleHelper
                                              .underLine,
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      CustomElevatedButton(
                        width: getHorizontalSize(145),
                        text: "lbl_save".tr,
                        margin: getMargin(
                          top: 13,
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
    );
  }
}
