import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray80001,
      );
  static BoxDecoration get fillBluegray80001 => BoxDecoration(
        color: appTheme.blueGray80001.withOpacity(0.46),
      );
  static BoxDecoration get fillBluegray800011 => BoxDecoration(
        color: appTheme.blueGray80001.withOpacity(0.7),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray20001,
      );
  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: appTheme.gray10001,
      );
  static BoxDecoration get fillGray10002 => BoxDecoration(
        color: appTheme.gray10002,
      );
  static BoxDecoration get fillGray10003 => BoxDecoration(
        color: appTheme.gray10003,
      );
  static BoxDecoration get fillGray300 => BoxDecoration(
        color: appTheme.gray300,
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green700,
      );
  static BoxDecoration get fillGreen700 => BoxDecoration(
        color: appTheme.green700.withOpacity(0.4),
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange500,
      );
  static BoxDecoration get fillPink => BoxDecoration(
        color: appTheme.pink40001,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );
  static BoxDecoration get fillRedA => BoxDecoration(
        color: appTheme.redA700,
      );
  static BoxDecoration get fillRedA70001 => BoxDecoration(
        color: appTheme.redA70001,
      );
  static BoxDecoration get fillRedA70002 => BoxDecoration(
        color: appTheme.redA70002,
      );
  static BoxDecoration get fillYellow => BoxDecoration(
        color: appTheme.yellow900,
      );

  // Gradient decorations
  static BoxDecoration get gradientOrangeToPink => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.64),
          end: Alignment(1, 1),
          colors: [
            appTheme.orange500,
            appTheme.pink90002,
          ],
        ),
      );
  static BoxDecoration get gradientOrangeToPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.88, 0.25),
          end: Alignment(0.12, 0.23),
          colors: [
            appTheme.orange500,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientPinkToPink => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.64),
          end: Alignment(1, 1),
          colors: [
            appTheme.pink600,
            appTheme.pink900,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToOrange => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.primary.withOpacity(0.7),
            appTheme.orange500.withOpacity(0.2),
            appTheme.orange500.withOpacity(0.3),
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToPink => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1, 0.5),
          end: Alignment(-0.02, 0.5),
          colors: [
            theme.colorScheme.primary,
            appTheme.pink40001,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration();
  static BoxDecoration get outlineBlack90001 => BoxDecoration();
  static BoxDecoration get outlineBlack900011 => BoxDecoration();
  static BoxDecoration get outlineBlack9000110 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9000111 => BoxDecoration();
  static BoxDecoration get outlineBlack9000112 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.05),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              -4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9000113 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.1),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              -5,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9000114 => BoxDecoration();
  static BoxDecoration get outlineBlack900012 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.1),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              5,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900013 => BoxDecoration();
  static BoxDecoration get outlineBlack900014 => BoxDecoration(
        color: appTheme.orange500,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.15),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900015 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.15),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900016 => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900017 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.15),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900018 => BoxDecoration();
  static BoxDecoration get outlineBlack900019 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.1),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border.all(
          color: appTheme.blueGray80001,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineBluegray100 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border(
          bottom: BorderSide(
            color: appTheme.blueGray100,
            width: getHorizontalSize(1),
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.15),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray1001 => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray100,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineBluegray80001 => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray80001,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineDeepOrange => BoxDecoration(
        color: appTheme.gray100,
        border: Border.all(
          color: appTheme.deepOrange100,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineDeeporange100 => BoxDecoration(
        border: Border.all(
          color: appTheme.deepOrange100,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray20002,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineGray300 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray300,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineGray3001 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border.all(
          color: appTheme.gray300,
          width: getHorizontalSize(1),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.1),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray3002 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray300,
          width: getHorizontalSize(1),
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineGray3003 => BoxDecoration(
        color: appTheme.red5001,
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray300,
            width: getHorizontalSize(1),
          ),
        ),
      );
  static BoxDecoration get outlineGray3004 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray300,
            width: getHorizontalSize(1),
          ),
        ),
      );
  static BoxDecoration get outlineGray3005 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border.all(
          color: appTheme.gray300,
          width: getHorizontalSize(1),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.15),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray3006 => BoxDecoration(
        color: appTheme.red50,
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray300,
            width: getHorizontalSize(1),
          ),
        ),
      );
  static BoxDecoration get outlineGray3007 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border.all(
          color: appTheme.gray300,
          width: getHorizontalSize(1),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.15),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              3,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray3008 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray300,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineGray600 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.15),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGreen => BoxDecoration(
        border: Border.all(
          color: appTheme.green700,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineGreen700 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border.all(
          color: appTheme.green700,
          width: getHorizontalSize(1),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.2),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimary => BoxDecoration(
        color: appTheme.amber500,
        border: Border.all(
          color: theme.colorScheme.onPrimary.withOpacity(1),
          width: getHorizontalSize(2),
          strokeAlign: strokeAlignCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.2),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimary1 => BoxDecoration(
        color: appTheme.gray300,
        border: Border.all(
          color: theme.colorScheme.onPrimary.withOpacity(1),
          width: getHorizontalSize(2),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.15),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimary2 => BoxDecoration(
        color: appTheme.blueGray80001,
        border: Border.all(
          color: theme.colorScheme.onPrimary.withOpacity(1),
          width: getHorizontalSize(5),
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlineOnPrimary3 => BoxDecoration(
        color: appTheme.green700,
        border: Border.all(
          color: theme.colorScheme.onPrimary.withOpacity(0.5),
          width: getHorizontalSize(7),
        ),
      );
  static BoxDecoration get outlineOrange => BoxDecoration();
  static BoxDecoration get outlineOrange500 => BoxDecoration(
        border: Border.all(
          color: appTheme.orange500,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineOrange5001 => BoxDecoration(
        border: Border.all(
          color: appTheme.orange500,
          width: getHorizontalSize(1),
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineOrange5002 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border.all(
          color: appTheme.orange500,
          width: getHorizontalSize(1),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.1),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              8,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOrange5003 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border.all(
          color: appTheme.orange500,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineOrange5004 => BoxDecoration(
        border: Border.all(
          color: appTheme.orange500,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineOrangeA => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.orangeA20002,
            width: getHorizontalSize(1),
          ),
        ),
      );
  static BoxDecoration get outlinePink => BoxDecoration(
        border: Border.all(
          color: appTheme.pink40001,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: getHorizontalSize(2),
        ),
      );
  static BoxDecoration get outlineRedA => BoxDecoration(
        border: Border.all(
          color: appTheme.redA70001,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineRedA70001 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border.all(
          color: appTheme.redA70001,
          width: getHorizontalSize(1),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.2),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineRedA700011 => BoxDecoration();
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder15 => BorderRadius.circular(
        getHorizontalSize(15),
      );
  static BorderRadius get circleBorder20 => BorderRadius.circular(
        getHorizontalSize(20),
      );
  static BorderRadius get circleBorder30 => BorderRadius.circular(
        getHorizontalSize(30),
      );
  static BorderRadius get circleBorder62 => BorderRadius.circular(
        getHorizontalSize(62),
      );

  // Custom borders
  static BorderRadius get customBorderBL5 => BorderRadius.vertical(
        bottom: Radius.circular(getHorizontalSize(5)),
      );
  static BorderRadius get customBorderBL51 => BorderRadius.only(
        bottomLeft: Radius.circular(getHorizontalSize(5)),
      );
  static BorderRadius get customBorderLR20 => BorderRadius.horizontal(
        right: Radius.circular(getHorizontalSize(20)),
      );
  static BorderRadius get customBorderTL20 => BorderRadius.vertical(
        top: Radius.circular(getHorizontalSize(20)),
      );
  static BorderRadius get customBorderTL5 => BorderRadius.vertical(
        top: Radius.circular(getHorizontalSize(5)),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        getHorizontalSize(10),
      );
  static BorderRadius get roundedBorder2 => BorderRadius.circular(
        getHorizontalSize(2),
      );
  static BorderRadius get roundedBorder49 => BorderRadius.circular(
        getHorizontalSize(49),
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        getHorizontalSize(5),
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    