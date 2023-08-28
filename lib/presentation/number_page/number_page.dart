import '../number_page/widgets/number_item_widget.dart';
import 'bloc/number_bloc.dart';
import 'models/number_item_model.dart';
import 'models/number_model.dart';
import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';
import 'package:samruddhi_s_application1/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class NumberPage extends StatefulWidget {
  const NumberPage({Key? key})
      : super(
          key: key,
        );

  @override
  NumberPageState createState() => NumberPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<NumberBloc>(
      create: (context) => NumberBloc(NumberState(
        numberModelObj: NumberModel(),
      ))
        ..add(NumberInitialEvent()),
      child: NumberPage(),
    );
  }
}

class NumberPageState extends State<NumberPage>
    with AutomaticKeepAliveClientMixin<NumberPage> {
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
                            child: BlocSelector<NumberBloc, NumberState,
                                NumberModel?>(
                              selector: (state) => state.numberModelObj,
                              builder: (context, numberModelObj) {
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
                                      numberModelObj?.numberItemList.length ??
                                          0,
                                  itemBuilder: (context, index) {
                                    NumberItemModel model =
                                        numberModelObj?.numberItemList[index] ??
                                            NumberItemModel();
                                    return NumberItemWidget(
                                      model,
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          CustomElevatedButton(
                            width: getHorizontalSize(160),
                            text: "lbl_save".tr.toUpperCase(),
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
