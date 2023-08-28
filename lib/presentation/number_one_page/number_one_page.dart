import '../number_one_page/widgets/number_one_item_widget.dart';
import 'bloc/number_one_bloc.dart';
import 'models/number_one_item_model.dart';
import 'models/number_one_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class NumberOnePage extends StatefulWidget {
  const NumberOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  NumberOnePageState createState() => NumberOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<NumberOneBloc>(
      create: (context) => NumberOneBloc(NumberOneState(
        numberOneModelObj: NumberOneModel(),
      ))
        ..add(NumberOneInitialEvent()),
      child: NumberOnePage(),
    );
  }
}

class NumberOnePageState extends State<NumberOnePage>
    with AutomaticKeepAliveClientMixin<NumberOnePage> {
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
                        left: 14,
                        top: 14,
                        right: 14,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: BlocSelector<NumberOneBloc, NumberOneState,
                                NumberOneModel?>(
                              selector: (state) => state.numberOneModelObj,
                              builder: (context, numberOneModelObj) {
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
                                  itemCount: numberOneModelObj
                                          ?.numberOneItemList.length ??
                                      0,
                                  itemBuilder: (context, index) {
                                    NumberOneItemModel model = numberOneModelObj
                                            ?.numberOneItemList[index] ??
                                        NumberOneItemModel();
                                    return NumberOneItemWidget(
                                      model,
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          CustomElevatedButton(
                            width: getHorizontalSize(160),
                            text: "lbl_update".tr.toUpperCase(),
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
        ),
      ),
    );
  }
}
