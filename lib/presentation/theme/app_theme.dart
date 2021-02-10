import 'package:flutter/material.dart';

class AppTheme {
  Color get backgroundColor => Color(0xFFE5E5E5);
  Color get scaffoldBackgroundColor => Color(0xFF000C66);
  Color get primaryColor => Color(0xFF11270B);
  Color get primaryColorLight => Color(0xFFFCFFF9);
  Color get accentColor => Color(0xFFFB992F);
  Color get hintColor => Color(0xFF879382);
  Color get primaryColorDark => Color(0xFF879382);

  ThemeData get themeData => ThemeData(
        unselectedWidgetColor: accentColor,
        toggleableActiveColor: primaryColor,
        primaryColorLight: primaryColorLight,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        primaryColorDark: primaryColorDark,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        backgroundColor: backgroundColor,
        primaryColor: primaryColor,
        accentColor: accentColor,
        dividerColor: Colors.transparent,
        hintColor: hintColor,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontFamily: 'Gilroy',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            fontSize: 16,
            letterSpacing: 0.25,
            color: primaryColorDark,
          ),
          bodyText2: TextStyle(
            fontFamily: 'Gilroy',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            fontSize: 18,
            letterSpacing: 0.25,
            color:Color(0xFF000000),
          ),
          headline6: TextStyle(
            fontFamily: 'Gilroy',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
            fontSize: 12,
            letterSpacing: 0.25,
            color: primaryColorDark,
          ),
          subtitle1: TextStyle(
            fontFamily: 'Gilroy',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            fontSize: 14,
            letterSpacing: 0.25,
            color: primaryColorDark,
          ),
          subtitle2: TextStyle(
            fontFamily: 'Gilroy',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w300,
            fontSize: 14,
            letterSpacing: 1,
            color: scaffoldBackgroundColor,
          ),
          headline1: TextStyle(
            fontFamily: 'Gilroy',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
            fontSize: 32,
            letterSpacing: 1,
            color: Color(0xFF000000),
          ),
          headline2: TextStyle(
            fontFamily: 'Gilroy',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
            fontSize: 20,
            letterSpacing: 1,
            color: primaryColor,
          ),
          headline3: TextStyle(
            fontFamily: 'Gilroy',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
            fontSize: 16,
            letterSpacing: 1,
            color: primaryColor,
          ),
          headline4: TextStyle(
            fontFamily: 'Gilroy',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
            fontSize: 12,
            letterSpacing: 1,
            color: accentColor,
          ),
          headline5: TextStyle(
            fontFamily: 'Gilroy',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            fontSize: 16,
            letterSpacing: 0.25,
            color: scaffoldBackgroundColor,
          ),
        ),
        buttonTheme: ButtonThemeData(
          colorScheme: ColorScheme(
            primary: primaryColor,
            secondaryVariant: accentColor,
            onBackground: Colors.transparent,
            error: Colors.red,
            onSecondary: Colors.white,
            onSurface: accentColor,
            surface: scaffoldBackgroundColor,
            secondary: accentColor,
            brightness: Brightness.light,
            onError: Colors.white,
            background: scaffoldBackgroundColor,
            onPrimary: Colors.white,
            primaryVariant: primaryColorDark,
          ),
        ),
      
      );

  
}
