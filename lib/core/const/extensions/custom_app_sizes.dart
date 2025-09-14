import 'package:flutter/material.dart';

/// These constants represent raw double values used for consistent sizing
/// throughout the app (e.g., padding, spacing, radius, margins, etc.).
/// Use these values to avoid magic numbers and ensure design uniformity.
class CustomAppSizes {
  CustomAppSizes._(); // Prevents instantiation of this class

  /// Extra small size: 4.0
  static const double xSmall = 4;

  /// Small size: 8.0
  static const double small = 8;

  /// Medium size: 16.0
  static const double medium = 16;

  /// Large size: 24.0
  static const double large = 24;

  /// Extra large size: 32.0
  static const double xlarge = 32;
}

/// These constants define uniform paddings using [EdgeInsets.all] for
/// consistent spacing across UI components (buttons, cards, containers, etc.).
/// Values are based on [CustomAppSizes] for easier scaling and central control.
class AppPaddings {
  AppPaddings._();

  /// Padding of 4.0 on all sides
  static const EdgeInsets xSmall = EdgeInsets.all(CustomAppSizes.xSmall);

  /// Padding of 8.0 on all sides
  static const EdgeInsets small = EdgeInsets.all(CustomAppSizes.small);

  /// Padding of 16.0 on all sides
  static const EdgeInsets medium = EdgeInsets.all(CustomAppSizes.medium);

  /// Padding of 24.0 on all sides
  static const EdgeInsets large = EdgeInsets.all(CustomAppSizes.large);

  /// Padding of 32.0 on all sides
  static const EdgeInsets xlarge = EdgeInsets.all(CustomAppSizes.xlarge);

  // --- Symmetric horizontal padding only ---

  /// Horizontal padding of 4.0 (left & right)
  static const EdgeInsets xSmallHorizontal = EdgeInsets.symmetric(
    horizontal: CustomAppSizes.xSmall,
  );

  /// Horizontal padding of 8.0 (left & right)
  static const EdgeInsets smallHorizontal = EdgeInsets.symmetric(
    horizontal: CustomAppSizes.small,
  );

  /// Horizontal padding of 16.0 (left & right)
  static const EdgeInsets mediumHorizontal = EdgeInsets.symmetric(
    horizontal: CustomAppSizes.medium,
  );

  /// Horizontal padding of 24.0 (left & right)
  static const EdgeInsets largeHorizontal = EdgeInsets.symmetric(
    horizontal: CustomAppSizes.large,
  );

  /// Horizontal padding of 32.0 (left & right)
  static const EdgeInsets xlargeHorizontal = EdgeInsets.symmetric(
    horizontal: CustomAppSizes.xlarge,
  );

  // --- Symmetric vertical padding only ---

  /// Vertical padding of 4.0 (top & bottom)
  static const EdgeInsets xSmallVertical = EdgeInsets.symmetric(
    vertical: CustomAppSizes.xSmall,
  );

  /// Vertical padding of 8.0 (top & bottom)
  static const EdgeInsets smallVertical = EdgeInsets.symmetric(
    vertical: CustomAppSizes.small,
  );

  /// Vertical padding of 16.0 (top & bottom)
  static const EdgeInsets mediumVertical = EdgeInsets.symmetric(
    vertical: CustomAppSizes.medium,
  );

  /// Vertical padding of 24.0 (top & bottom)
  static const EdgeInsets largeVertical = EdgeInsets.symmetric(
    vertical: CustomAppSizes.large,
  );

  /// Vertical padding of 32.0 (top & bottom)
  static const EdgeInsets xlargeVertical = EdgeInsets.symmetric(
    vertical: CustomAppSizes.xlarge,
  );
}

/// These constants provide predefined corner radii for rounded corners on
/// widgets like cards, buttons, and containers.
/// Use these to create a consistent visual appearance across the app.
class AppRadius {
  AppRadius._(); // Prevents instantiation of this class

  /// Corner radius of 4.0 for all corners
  static const BorderRadius xSmall = BorderRadius.all(
    Radius.circular(CustomAppSizes.xSmall),
  );

  /// Corner radius of 8.0 for all corners
  static const BorderRadius small = BorderRadius.all(
    Radius.circular(CustomAppSizes.small),
  );

  /// Corner radius of 16.0 for all corners
  static const BorderRadius medium = BorderRadius.all(
    Radius.circular(CustomAppSizes.medium),
  );

  /// Corner radius of 24.0 for all corners
  static const BorderRadius large = BorderRadius.all(
    Radius.circular(CustomAppSizes.large),
  );

  /// Corner radius of 32.0 for all corners
  static const BorderRadius xlarge = BorderRadius.all(
    Radius.circular(CustomAppSizes.xlarge),
  );
}
