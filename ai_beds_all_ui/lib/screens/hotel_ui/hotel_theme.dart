import 'package:flutter/material.dart';

class HotelTheme {
  static TextTheme _buildTextTheme(TextTheme base) {
    const String fontName = "WorkSans";
    return base.copyWith(
      // displayLarge: base.displayLarge?.copyWith(fontFamily: fontName),
      // displayMedium: base.displayMedium?.copyWith(fontFamily: fontName),
      // displaySmall: base.displaySmall?.copyWith(fontFamily: fontName),
      // headlineMedium: base.headlineMedium?.copyWith(fontFamily: fontName),
      // headlineSmall: base.headlineSmall?.copyWith(fontFamily: fontName),
      // titleLarge: base.titleLarge?.copyWith(fontFamily: fontName),
      // labelLarge: base.labelLarge?.copyWith(fontFamily: fontName),
      // bodyLarge: base.bodyLarge?.copyWith(fontFamily: fontName),
      // bodyMedium: base.bodyMedium?.copyWith(fontFamily: fontName),
      // titleMedium: base.titleMedium?.copyWith(fontFamily: fontName),
      // titleSmall: base.titleSmall?.copyWith(fontFamily: fontName),
      // labelSmall: base.labelSmall?.copyWith(fontFamily: fontName),
      // bodySmall: base.bodySmall?.copyWith(fontFamily: fontName),

      headline1: base.headline1?.copyWith(fontFamily: fontName),
      headline2: base.headline2?.copyWith(fontFamily: fontName),
      headline3: base.headline3?.copyWith(fontFamily: fontName),
      headline4: base.headline4?.copyWith(fontFamily: fontName),
      headline5: base.headline5?.copyWith(fontFamily: fontName),
      headline6: base.headline6?.copyWith(fontFamily: fontName),
      button: base.button?.copyWith(fontFamily: fontName),
      bodyText1: base.bodyText1?.copyWith(fontFamily: fontName),
      bodyText2: base.bodyText2?.copyWith(fontFamily: fontName),
      subtitle1: base.subtitle1?.copyWith(fontFamily: fontName),
      subtitle2: base.subtitle2?.copyWith(fontFamily: fontName),
      overline: base.overline?.copyWith(fontFamily: fontName),
      caption: base.caption?.copyWith(fontFamily: fontName),
    );
  }

  static ThemeData buildLightTheme() {
    const Color primaryColor = Color.fromARGB(255, 255, 255, 255);
    const Color secondaryColor = Color(0xff7FBA67);
    final ColorScheme colorScheme = const ColorScheme.light()
        .copyWith(primary: primaryColor, secondary: secondaryColor);
    final ThemeData base = ThemeData.light();

    return base.copyWith(
        colorScheme: colorScheme,
        primaryColor: primaryColor,
        indicatorColor: Colors.white,
        splashColor: Colors.white24,
        splashFactory: InkRipple.splashFactory,
        canvasColor: Colors.white,
        backgroundColor: const Color(0xFFFFFFFF),
        scaffoldBackgroundColor: const Color(0xFFF6F6F6),
        errorColor: const Color(0xFFB00020),
        buttonTheme: ButtonThemeData(
          colorScheme: colorScheme,
          textTheme: ButtonTextTheme.primary,
        ),
        textTheme: _buildTextTheme(base.textTheme),
        primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
        platform: TargetPlatform.iOS);
  }

}
