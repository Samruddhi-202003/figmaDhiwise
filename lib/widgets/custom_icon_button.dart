import 'package:flutter/material.dart';
import 'package:samruddhi_s_application1/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.margin,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: SizedBox(
          height: height ?? 0,
          width: width ?? 0,
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: Container(
              padding: padding ?? EdgeInsets.zero,
              decoration: decoration ??
                  BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(getHorizontalSize(17.00)),
                    border: Border.all(
                      color: appTheme.pink40001,
                      width: getHorizontalSize(2.00),
                    ),
                  ),
              child: child,
            ),
            onPressed: onTap,
          ),
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(getHorizontalSize(12.00)),
      );
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange500,
        borderRadius: BorderRadius.circular(getHorizontalSize(12.00)),
      );
  static BoxDecoration get outlineOnPrimary => BoxDecoration(
        color: appTheme.gray300,
        borderRadius: BorderRadius.circular(getHorizontalSize(20.00)),
        border: Border.all(
          color: theme.colorScheme.onPrimary.withOpacity(1),
          width: getHorizontalSize(2.00),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.indigo4004c,
            spreadRadius: getHorizontalSize(2.00),
            blurRadius: getHorizontalSize(2.00),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimaryTL20 => BoxDecoration(
        color: appTheme.orange500,
        borderRadius: BorderRadius.circular(getHorizontalSize(20.00)),
        border: Border.all(
          color: theme.colorScheme.onPrimary.withOpacity(1),
          width: getHorizontalSize(2.00),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.indigo4004c,
            spreadRadius: getHorizontalSize(2.00),
            blurRadius: getHorizontalSize(2.00),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        borderRadius: BorderRadius.circular(getHorizontalSize(12.00)),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray10001,
        borderRadius: BorderRadius.circular(getHorizontalSize(15.00)),
      );
  static BoxDecoration get fillGrayTL15 => BoxDecoration(
        color: appTheme.gray10002,
        borderRadius: BorderRadius.circular(getHorizontalSize(15.00)),
      );
  static BoxDecoration get outlineOrange => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        borderRadius: BorderRadius.circular(getHorizontalSize(20.00)),
        border: Border.all(
          color: appTheme.orange500,
          width: getHorizontalSize(2.00),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.indigo4004c,
            spreadRadius: getHorizontalSize(2.00),
            blurRadius: getHorizontalSize(2.00),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillRedA => BoxDecoration(
        color: appTheme.redA70001,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(
            getHorizontalSize(5.00),
          ),
        ),
      );
  static BoxDecoration get fillGrayTL12 => BoxDecoration(
        color: appTheme.gray300,
        borderRadius: BorderRadius.circular(getHorizontalSize(12.00)),
      );
  static BoxDecoration get fillGrayTL121 => BoxDecoration(
        color: appTheme.gray10003,
        borderRadius: BorderRadius.circular(getHorizontalSize(12.00)),
      );
  static BoxDecoration get gradientOrangeToPrimary => BoxDecoration(
        borderRadius: BorderRadius.circular(getHorizontalSize(12.00)),
        gradient: LinearGradient(
          begin: Alignment(0.88, 0),
          end: Alignment(0.12, 0),
          colors: [
            appTheme.orange500,
            theme.colorScheme.primary,
          ],
        ),
      );
}
