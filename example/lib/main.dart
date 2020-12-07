import 'package:flutter/material.dart';

import './MainPage.dart';

void main() => runApp(new ExampleApplication());

class ExampleApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      theme: _CarseatAppTheme(),
    );
  }
}

ThemeData _CarseatAppTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: _carseatScheme,
    accentColor: carseatAccent,
    primaryColor: carseatPrimary,
    buttonColor: carseatPrimary,
    scaffoldBackgroundColor: carseatBackground,
    cardColor: carseatBackground,
    textSelectionColor: carseatPrimary,
    errorColor: carseatRed,
    buttonTheme: const ButtonThemeData(
      colorScheme: _carseatScheme,
      textTheme: ButtonTextTheme.normal,
    ),
    primaryIconTheme: _customIconTheme(base.iconTheme),
    textTheme: _CarseatTextTheme(base.textTheme),
    primaryTextTheme: _CarseatTextTheme(base.primaryTextTheme),
    accentTextTheme: _CarseatTextTheme(base.accentTextTheme),
    iconTheme: _customIconTheme(base.iconTheme),
  );
}

IconThemeData _customIconTheme(IconThemeData original) {
  return original.copyWith(color: carseatAccent);
}

TextTheme _CarseatTextTheme(TextTheme base) {
  return base
      .copyWith(
        caption: base.caption.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          letterSpacing: defaultLetterSpacing,
        ),
        button: base.button.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: defaultLetterSpacing,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: carseatAccent,
        bodyColor: shrineBrown600,
      );
}

const ColorScheme _carseatScheme = ColorScheme(
  primary: carseatPrimary,
  primaryVariant: carseatAccent,
  secondary: shrinePink50,
  secondaryVariant: carseatAccent,
  surface: shrineSurfaceWhite,
  background: carseatBackground,
  error: carseatRed,
  onPrimary: carseatAccent,
  onSecondary: carseatAccent,
  onSurface: carseatAccent,
  onBackground: carseatAccent,
  onError: shrineSurfaceWhite,
  brightness: Brightness.light,
);

const Color shrinePink50 = Color(0xFFF9E1DC);
const Color carseatPrimary = Color(0xFF6281FF);
const Color shrinePink300 = Color(0xFFFBB8AC);
const Color shrinePink400 = Color(0xFFEAA4A4);

const Color carseatAccent = Color(0xFFFFFFFF); //white
const Color shrineBrown600 = Color(0xFF7D4F52);

const Color carseatRed = Color(0xFFC5032B);

const Color shrineSurfaceWhite = Color(0xFFFFFBFA);
const Color carseatBackground = Color(0xFFFCEDC9);

const defaultLetterSpacing = 0.05;
