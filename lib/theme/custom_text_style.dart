import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMedium14 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyMedium14_1 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyMediumBlack90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: getFontSize(
          15,
        ),
      );
  static get bodyMediumBlack9000114 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyMediumInterOnPrimary =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyMediumInterOnPrimary14 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodySmallBlack90001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black90001,
        fontSize: getFontSize(
          12,
        ),
      );
  static get bodySmallBlack90001_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black90001,
      );
  static get bodySmallBluegray80001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray80001,
        fontSize: getFontSize(
          8,
        ),
      );
  static get bodySmallBluegray8000112 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray80001,
        fontSize: getFontSize(
          12,
        ),
      );
  static get bodySmallBluegray8000112_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray80001,
        fontSize: getFontSize(
          12,
        ),
      );
  static get bodySmallBluegray800018 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray80001,
        fontSize: getFontSize(
          8,
        ),
      );
  static get bodySmallGray60001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60001,
      );
  static get bodySmallGray6000112 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60001,
        fontSize: getFontSize(
          12,
        ),
      );
  static get bodySmallGreen700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.green700,
        fontSize: getFontSize(
          8,
        ),
      );
  static get bodySmallGreen70001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.green70001,
        fontSize: getFontSize(
          8,
        ),
      );
  static get bodySmallGreen700018 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.green70001,
        fontSize: getFontSize(
          8,
        ),
      );
  static get bodySmallGreen7008 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.green700,
        fontSize: getFontSize(
          8,
        ),
      );
  static get bodySmallOrange500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.orange500,
        fontSize: getFontSize(
          12,
        ),
      );
  static get bodySmallOrange50012 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.orange500,
        fontSize: getFontSize(
          12,
        ),
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: getFontSize(
          12,
        ),
      );
  static get bodySmallRedA70001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.redA70001,
        fontSize: getFontSize(
          8,
        ),
      );
  static get bodySmallRedA700018 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.redA70001,
        fontSize: getFontSize(
          8,
        ),
      );
  // Display text style
  static get displaySmallBluegray80001 =>
      theme.textTheme.displaySmall!.copyWith(
        color: appTheme.blueGray80001,
      );
  static get displaySmallBold => theme.textTheme.displaySmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  // Headline text style
  static get headlineLargeBluegray80001 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.blueGray80001,
      );
  static get headlineLargeBluegray80001_1 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.blueGray80001,
      );
  static get headlineMediumBluegray80001 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.blueGray80001,
        fontWeight: FontWeight.w700,
      );
  static get headlineMediumGreen700 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.green700,
        fontWeight: FontWeight.w700,
      );
  static get headlineMediumRedA70001 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.redA70001,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallBluegray80001 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray80001,
      );
  static get headlineSmallBluegray80001Regular =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray80001,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallBluegray80001_1 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray80001,
      );
  static get headlineSmallBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallBold_1 => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallGreen700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.green700,
      );
  static get headlineSmallGreen70001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.green70001,
      );
  static get headlineSmallGreen700Regular =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.green700,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallInter =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get headlineSmallRedA70001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.redA70001,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallRedA70001_1 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.redA70001,
      );
  static get headlineSmallRedA70001_2 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.redA70001,
      );
  // Hind text style
  static get hindBluegray80001 => TextStyle(
        color: appTheme.blueGray80001,
        fontSize: getFontSize(
          7,
        ),
        fontWeight: FontWeight.w500,
      ).hind;
  static get hindOnPrimary => TextStyle(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: getFontSize(
          7,
        ),
        fontWeight: FontWeight.w600,
      ).hind;
  static get hindOrange500 => TextStyle(
        color: appTheme.orange500,
        fontSize: getFontSize(
          7,
        ),
        fontWeight: FontWeight.w600,
      ).hind;
  static get hindPrimary => TextStyle(
        color: theme.colorScheme.primary,
        fontSize: getFontSize(
          7,
        ),
        fontWeight: FontWeight.w500,
      ).hind;
  // Label text style
  static get labelLarge13 => theme.textTheme.labelLarge!.copyWith(
        fontSize: getFontSize(
          13,
        ),
      );
  static get labelLargeBlack90001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeBlack90001Medium => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeBlack90001Medium13 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90001,
        fontSize: getFontSize(
          13,
        ),
        fontWeight: FontWeight.w500,
      );
  static get labelLargeBluegray80001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray80001,
      );
  static get labelLargeBluegray80001Medium =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray80001,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeBluegray80001Medium_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray80001,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeBluegray80001_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray80001,
      );
  static get labelLargeGray600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeGreen700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.green700,
      );
  static get labelLargeGreen70001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.green70001,
      );
  static get labelLargeGreen700Medium => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.green700,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeGreen700Medium_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.green700,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeInterBluegray80001 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.blueGray80001,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeMedium => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelLargePink600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.pink600,
      );
  static get labelLargeRedA70001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.redA70001,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeRedA70001Medium => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.redA70001,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeRedA70001_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.redA70001,
      );
  static get labelMediumBluegray80001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray80001,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumBluegray80001SemiBold =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray80001,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumBluegray80001_1 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray80001,
      );
  static get labelMediumGray500 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumGray600 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get labelMediumGray60011 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: getFontSize(
          11,
        ),
      );
  static get labelMediumOnPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get labelMediumOnPrimarySemiBold =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get labelMediumOnPrimary_1 => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get labelSmallBlack90001 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.black90001,
        fontSize: getFontSize(
          9,
        ),
        fontWeight: FontWeight.w700,
      );
  static get labelSmallBlack90001_1 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.black90001,
      );
  static get labelSmallGray60001 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray60001,
        fontSize: getFontSize(
          9,
        ),
      );
  static get labelSmallOnPrimary => theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get labelSmallOnPrimary_1 => theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get labelSmallOrange500 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.orange500,
        fontWeight: FontWeight.w600,
      );
  static get labelSmallSemiBold => theme.textTheme.labelSmall!.copyWith(
        fontSize: getFontSize(
          9,
        ),
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleLargeBlack90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeBlack90001Bold => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeBlack90001Regular =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001,
        fontSize: getFontSize(
          22,
        ),
        fontWeight: FontWeight.w400,
      );
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontSize: getFontSize(
          22,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleLargeGreen700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.green700,
      );
  static get titleLargeGreen700Bold => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.green700,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeGreen700Bold22 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.green700,
        fontSize: getFontSize(
          22,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleLargeGreen700_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.green700,
      );
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get titleLargeOnPrimaryBold => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargePrimaryRegular => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeRedA70001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.redA70001,
        fontSize: getFontSize(
          22,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleLargeRedA70001Bold => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.redA70001,
        fontWeight: FontWeight.w700,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: getFontSize(
          18,
        ),
      );
  static get titleMedium18_1 => theme.textTheme.titleMedium!.copyWith(
        fontSize: getFontSize(
          18,
        ),
      );
  static get titleMediumBlack90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlack90001Medium =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlack90001Medium18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlack90001_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
      );
  static get titleMediumBluegray100 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray100,
      );
  static get titleMediumBluegray800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray800,
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray300,
      );
  static get titleMediumGray600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGreen700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.green700,
        fontSize: getFontSize(
          18,
        ),
      );
  static get titleMediumGreen70018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.green700,
        fontSize: getFontSize(
          18,
        ),
      );
  static get titleMediumGreen700Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.green700,
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGreen700_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.green700,
      );
  static get titleMediumInterOnPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMedium_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get titleMediumOnPrimary18 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: getFontSize(
          18,
        ),
      );
  static get titleMediumOnPrimary18_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: getFontSize(
          18,
        ),
      );
  static get titleMediumOnPrimaryBold => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleMediumOnPrimaryMedium =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimaryMedium_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumRedA70001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.redA70001,
        fontSize: getFontSize(
          18,
        ),
      );
  static get titleMediumRedA7000118 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.redA70001,
        fontSize: getFontSize(
          18,
        ),
      );
  static get titleMediumRedA70001Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.redA70001,
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBlack90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90001,
      );
  static get titleSmallBlack90001Medium => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray80001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray80001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray80001Bold =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray80001,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBluegray80001Medium =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray80001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray80001_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray80001,
      );
  static get titleSmallBluegray80001_2 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray80001,
      );
  static get titleSmallGray60001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray60001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGreen700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.green700,
      );
  static get titleSmallGreen700Bold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.green700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGreen700_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.green700,
      );
  static get titleSmallInterBluegray80001 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.blueGray80001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterOnPrimary =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: getFontSize(
          15,
        ),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnPrimary15 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: getFontSize(
          15,
        ),
      );
  static get titleSmallOnPrimary15_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: getFontSize(
          15,
        ),
      );
  static get titleSmallOnPrimaryBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOnPrimaryMedium => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnPrimaryMedium_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get titleSmallOnPrimary_2 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get titleSmallPink600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.pink600,
      );
  static get titleSmallRedA70001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.redA70001,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallRedA70001_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.redA70001,
      );
  static get titleSmallRedA70001_2 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.redA70001,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get hind {
    return copyWith(
      fontFamily: 'Hind',
    );
  }
}
