import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const COLOR_BLACK = Color.fromRGBO(48, 47, 48, 1.0);
const COLOR_GREY = Color.fromRGBO(141, 141, 141, 1.0);
const COLOR_WHITE = Colors.white;
const COLOR_DARK_BLUE = Color.fromRGBO(20, 25, 45, 1.0);

const COMPONENT_COLOR = Colors.black;
TextStyle mystyle1 = TextStyle(
  height: 1.5,
  color: COLOR_BLACK,
  fontWeight: FontWeight.w400,
  fontSize: 16,
);

TextStyle mystyle2 = TextStyle(
    color: COLOR_BLACK,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    decoration: TextDecoration.underline);

TextStyle WhiteHeadline =
    TextStyle(color: MAIN_COLOR, fontWeight: FontWeight.w500, fontSize: 20);

const MAIN_ACCENT_DARK = Color.fromRGBO(30, 30, 30, 1);
const MAIN_ACCENT = Colors.blue;
const MAIN_COLOR = Colors.white;

const COLOR_BG = Color.fromRGBO(15, 15, 15, 1.0);
const PURPLE = Color.fromRGBO(111, 45, 168, 1);
const BLUE = Color.fromRGBO(31, 117, 254, 1);
//const BLUE = Color.fromRGBO(1, 121, 111, 1);
const GREEN = Color.fromRGBO(1, 121, 111, 1);

const TextTheme TEXT_THEME_DEFAULT = TextTheme(
    headline1: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 26),
    headline2: TextStyle(
        color: COMPONENT_COLOR, fontWeight: FontWeight.w700, fontSize: 22),
    headline3: TextStyle(
        color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
    headline4: TextStyle(
        color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16),
    headline5: TextStyle(
        color: Colors.white, fontWeight: FontWeight.w500, fontSize: 14),
    headline6: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 12),
    bodyText1: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.5),
    bodyText2: TextStyle(
        color: COLOR_GREY,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        height: 1.5),
    subtitle1: TextStyle(
        color: COLOR_BLACK, fontSize: 12, fontWeight: FontWeight.w400),
    subtitle2: TextStyle(
        color: COLOR_GREY, fontSize: 12, fontWeight: FontWeight.w400));

const TextTheme TEXT_THEME_SMALL = TextTheme(
    headline1: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 22),
    headline2: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 20),
    headline3: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 18),
    headline4: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 14),
    headline5: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 12),
    headline6: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 10),
    bodyText1: TextStyle(
        color: COLOR_BLACK,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        height: 1.5),
    bodyText2: TextStyle(
        color: COLOR_GREY,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        height: 1.5),
    subtitle1: TextStyle(
        color: COLOR_BLACK, fontSize: 10, fontWeight: FontWeight.w400),
    subtitle2: TextStyle(
        color: COLOR_GREY, fontSize: 10, fontWeight: FontWeight.w400));
