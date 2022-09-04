import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:services/custom/BorderIcon.dart';
import 'package:services/custom/OptionButton.dart';
import 'package:services/utils/constants.dart';
import 'package:services/utils/widget_functions.dart';
import 'package:services/custom/CardElements.dart';
import 'package:services/custom/VideoCard.dart';
import 'package:services/sample/studiodata.dart';

class RPH extends StatelessWidget {
  const RPH({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      child: Column(
        children: [
          CardElements(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              child: Column(
                children: [
                  addVerticalSpace(10),
                  Row(
                    children: [
                      Text("Ranking Curve",
                          style: themeData.textTheme.headline3),
                    ],
                  ),
                  addVerticalSpace(20),
                  Row(
                    children: [
                      Text("Graph"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          addVerticalSpace(8),
          CardElements(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              child: Column(
                children: [
                  addVerticalSpace(10),
                  Row(
                    children: [
                      Text("More Items", style: themeData.textTheme.headline3),
                    ],
                  ),
                  addVerticalSpace(20),
                  Row(
                    children: [
                      Text("Content"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          addVerticalSpace(8),
          CardElements(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              child: Column(
                children: [
                  addVerticalSpace(10),
                  Row(
                    children: [
                      Text("More Items", style: themeData.textTheme.headline3),
                    ],
                  ),
                  addVerticalSpace(20),
                  Row(
                    children: [
                      Text("Content"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          addVerticalSpace(8),
          CardElements(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              child: Column(
                children: [
                  addVerticalSpace(10),
                  Row(
                    children: [
                      Text("More Items", style: themeData.textTheme.headline3),
                    ],
                  ),
                  addVerticalSpace(20),
                  Row(
                    children: [
                      Text("Content"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
