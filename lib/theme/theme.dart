import 'package:flutter/material.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xff416FDf),
  onPrimary: Color(0XFFFFFFFF),
  secondary: Color(0XFF6EAEE7),
  onSecondary: Color(0XFFFFFFFF),
  error: Color(0XFFBA1A1A),
  onError: Color(0XFFFFFFFF),
  surface: Color(0XFFF9FAF3),
  onSurface: Color(0XFF1A1C18),
  background: Color(0XFFFCFDF6),
  onBackground: Color(0XFF1A1C18),
  shadow: Color(0XFF000000),
  outlineVariant: Color(0XFFC2CBBC),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xff416FDf),
  onPrimary: Color(0XFFFFFFFF),
  secondary: Color(0XFF6EAEE7),
  onSecondary: Color(0XFFFFFFFF),
  error: Color(0XFFBA1A1A),
  onError: Color(0XFFFFFFFF),
  surface: Color(0XFFF9FAF3),
  onSurface: Color(0XFF1A1C18),
);
ThemeData lightMode = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: lightColorScheme,
  elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle())
);
