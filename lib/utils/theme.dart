import 'package:flutter/material.dart';

// app theme
ThemeData newsTheme = ThemeData(
  primaryColor: blackColor,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  scaffoldBackgroundColor: bgColor,
  indicatorColor: blackColor,
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: blackColor,
  ),
  tabBarTheme: const TabBarTheme(
    labelColor: blackColor,
    unselectedLabelColor: greyColor,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: blackColor,
        width: 0.5,
      ),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: blackColor,
        width: 0.5,
      ),
    ),
    border: UnderlineInputBorder(
      borderSide: BorderSide(
        color: blackColor,
        width: 0.5,
      ),
    ),
  ),
);

// colors

const Color greyColor = Color(0xff9A9A9D);
const Color blackColor = Color(0xff000000);
const Color whiteColor = Color(0xffFFFFFF);
const Color bgColor = Color(0xffF2F2F2);
const Color transparent = Colors.transparent;
const Color blackAccentColor = Color(0xff393939);

// styles

// fonts
