import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';

class CustomBottomAppBar extends StatefulWidget {
  CustomBottomAppBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomAppBarState createState() => CustomBottomAppBarState();
}

class CustomBottomAppBarState extends State<CustomBottomAppBar> {
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.imgNavhome13x13,
        activeIcon: ImageConstant.imgNavhome13x13,
        title: "lbl_home".tr.toUpperCase(),
        type: BottomBarEnum.Home,
        isPng: true,
        isSelected: true),
    BottomMenuModel(
      icon: ImageConstant.imgNavfinancialplan,
      activeIcon: ImageConstant.imgNavfinancialplan,
      title: "lbl_financial_plan".tr.toUpperCase(),
      type: BottomBarEnum.Financialplan,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavtransaction,
      activeIcon: ImageConstant.imgNavtransaction,
      title: "lbl_transaction".tr.toUpperCase(),
      type: BottomBarEnum.Transaction,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavadvisory,
      activeIcon: ImageConstant.imgNavadvisory,
      title: "lbl_advisory".tr.toUpperCase(),
      type: BottomBarEnum.Advisory,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavmonitoring,
      activeIcon: ImageConstant.imgNavmonitoring,
      title: "lbl_monitoring".tr.toUpperCase(),
      type: BottomBarEnum.Monitoring,
      isPng: true,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      color: theme.colorScheme.onPrimary.withOpacity(1),
      child: SizedBox(
        height: getVerticalSize(24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            bottomMenuList.length,
            (index) {
              return InkWell(
                onTap: () {
                  for (var element in bottomMenuList) {
                    element.isSelected = false;
                  }
                  bottomMenuList[index].isSelected = true;
                  widgetonChanged?.call(bottomMenuList[index].type);
                  setState(() {});
                },
                child: bottomMenuList[index].isSelected
                    ? Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            svgPath: bottomMenuList[index].isPng == true
                                ? null
                                : bottomMenuList[index].activeIcon,
                            imagePath: bottomMenuList[index].isPng == true
                                ? bottomMenuList[index].activeIcon
                                : null,
                            height: getSize(40),
                            width: getSize(40),
                            color: theme.colorScheme.primary,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 2,
                            ),
                            child: Text(
                              bottomMenuList[index].title ?? "",
                              style: CustomTextStyles.hindPrimary.copyWith(
                                color: theme.colorScheme.primary,
                              ),
                            ),
                          ),
                        ],
                      )
                    : Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: getPadding(
                              top: 5,
                              bottom: 5,
                            ),
                            decoration: AppDecoration.fillGray10003.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: CustomImageView(
                              svgPath: bottomMenuList[index].isPng == true
                                  ? null
                                  : bottomMenuList[index].icon,
                              imagePath: bottomMenuList[index].isPng == true
                                  ? bottomMenuList[index].icon
                                  : null,
                              height: getSize(13),
                              width: getSize(13),
                              margin: getMargin(
                                left: 6,
                                top: 6,
                                right: 5,
                                bottom: 5,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 1,
                            ),
                            child: Text(
                              bottomMenuList[index].title ?? "",
                              style:
                                  CustomTextStyles.hindBluegray80001.copyWith(
                                color: appTheme.blueGray80001,
                              ),
                            ),
                          ),
                        ],
                      ),
              );
            },
          ),
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Financialplan,
  Transaction,
  Advisory,
  Monitoring,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    this.title,
    required this.type,
    this.isPng = false,
    this.isSelected = false,
  });

  String icon;

  String? title;

  BottomBarEnum type;

  bool isPng;

  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
