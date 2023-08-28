import '../edit_loan_page/widgets/edit_loan_item_widget.dart';
import 'bloc/edit_loan_bloc.dart';
import 'models/edit_loan_item_model.dart';
import 'models/edit_loan_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/custom_elevated_button.dart';
import 'package:samruddhi_s_application1/widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class EditLoanPage extends StatefulWidget {
  const EditLoanPage({Key? key})
      : super(
          key: key,
        );

  @override
  EditLoanPageState createState() => EditLoanPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<EditLoanBloc>(
      create: (context) => EditLoanBloc(EditLoanState(
        editLoanModelObj: EditLoanModel(),
      ))
        ..add(EditLoanInitialEvent()),
      child: EditLoanPage(),
    );
  }
}

class EditLoanPageState extends State<EditLoanPage>
    with AutomaticKeepAliveClientMixin<EditLoanPage> {
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
                    top: 15,
                    right: 15,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: AppDecoration.outlineOrange500.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: getPadding(
                                left: 10,
                                top: 2,
                                right: 10,
                                bottom: 2,
                              ),
                              decoration: AppDecoration.fillOrange,
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgAccount114x14,
                                    height: getSize(14),
                                    width: getSize(14),
                                    margin: getMargin(
                                      top: 5,
                                      bottom: 5,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 5,
                                      bottom: 1,
                                    ),
                                    child: Text(
                                      "lbl_car_loan".tr,
                                      style: CustomTextStyles
                                          .titleSmallOnPrimary_1,
                                    ),
                                  ),
                                  Spacer(),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgEdit,
                                    height: getSize(12),
                                    width: getSize(12),
                                    margin: getMargin(
                                      top: 6,
                                      bottom: 6,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgDelete1,
                                    height: getSize(12),
                                    width: getSize(12),
                                    margin: getMargin(
                                      left: 14,
                                      top: 6,
                                      bottom: 6,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 15,
                                top: 6,
                                right: 91,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      bottom: 1,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "lbl_type_of_loan".tr,
                                          style: theme.textTheme.labelMedium,
                                        ),
                                        Text(
                                          "lbl_car".tr,
                                          style: theme.textTheme.titleMedium,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "msg_total_loan_taken".tr,
                                        style: theme.textTheme.labelMedium,
                                      ),
                                      Text(
                                        "lbl_2_00_000".tr,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 15,
                                top: 6,
                              ),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_emi_start_date".tr,
                                        style: theme.textTheme.labelMedium,
                                      ),
                                      Text(
                                        "lbl_12_02_2015".tr,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 77,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "lbl_emi_end_date".tr,
                                          style: theme.textTheme.labelMedium,
                                        ),
                                        Text(
                                          "lbl_12_02_2024".tr,
                                          style: theme.textTheme.titleMedium,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 15,
                                top: 7,
                                bottom: 13,
                              ),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "msg_easy_monthly_installment2".tr,
                                        style: theme.textTheme.labelMedium,
                                      ),
                                      Text(
                                        "lbl_4_000".tr,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 15,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "msg_current_value_of".tr,
                                          style: theme.textTheme.labelMedium,
                                        ),
                                        Text(
                                          "lbl_40_000".tr,
                                          style: theme.textTheme.titleMedium,
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
                      Expanded(
                        child: SizedBox(
                          width: double.maxFinite,
                          child: Container(
                            margin: getMargin(
                              top: 15,
                            ),
                            padding: getPadding(
                              left: 15,
                              right: 15,
                            ),
                            decoration: AppDecoration.outlineGray3001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: getPadding(
                                      top: 13,
                                    ),
                                    child: BlocSelector<EditLoanBloc,
                                        EditLoanState, EditLoanModel?>(
                                      selector: (state) =>
                                          state.editLoanModelObj,
                                      builder: (context, editLoanModelObj) {
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
                                          itemCount: editLoanModelObj
                                                  ?.editLoanItemList.length ??
                                              0,
                                          itemBuilder: (context, index) {
                                            EditLoanItemModel model =
                                                editLoanModelObj
                                                            ?.editLoanItemList[
                                                        index] ??
                                                    EditLoanItemModel();
                                            return EditLoanItemWidget(
                                              model,
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                BlocSelector<EditLoanBloc, EditLoanState,
                                    TextEditingController?>(
                                  selector: (state) => state.priceController,
                                  builder: (context, priceController) {
                                    return CustomFloatingTextField(
                                      margin: getMargin(
                                        top: 15,
                                      ),
                                      controller: priceController,
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
                                CustomElevatedButton(
                                  width: getHorizontalSize(145),
                                  text: "lbl_update".tr,
                                  margin: getMargin(
                                    top: 16,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
