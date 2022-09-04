import 'package:flutter/material.dart';
import 'package:services/custom/VideoCard.dart';
import 'package:services/screens/AcountAndSettings.dart';
import 'package:services/screens/HomePage.dart';
import 'package:services/screens/PlaylistDetail.dart';
import 'package:services/screens/RankingPageHistory.dart';
import 'package:services/screens/RankingPageParent.dart';
import 'package:services/screens/StudioDashboard.dart';
import 'package:services/screens/StudioVideos.dart';
import 'package:services/utils/constants.dart';
import 'dart:ui';
import 'package:services/screens/RankingPageOverview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FLitterX',
      theme: ThemeData(
          primaryColor: COLOR_WHITE,
          accentColor: COLOR_DARK_BLUE,
          textTheme: screenWidth < 500 ? TEXT_THEME_SMALL : TEXT_THEME_DEFAULT,
          fontFamily: "Montserrat"),
      home: HomePage(),
    );
  }
}
