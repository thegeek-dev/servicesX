import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:services/custom/BorderIcon.dart';
import 'package:services/custom/OptionButton.dart';
import 'package:services/utils/constants.dart';
import 'package:services/utils/widget_functions.dart';
import 'package:services/custom/CardElements.dart';
import 'package:services/custom/VideoCard.dart';
import 'package:services/sample/studiodata.dart';

class RPO extends StatelessWidget {
  const RPO({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
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
                      Text("Current Rank:",
                          style: themeData.textTheme.headline3),
                    ],
                  ),
                  addVerticalSpace(20),
                  Row(
                    children: [
                      Text(
                        "900000",
                        style: themeData.textTheme.headline4,
                      ),
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
                      Text("All Time Best:",
                          style: themeData.textTheme.headline3),
                    ],
                  ),
                  addVerticalSpace(20),
                  Row(
                    children: [
                      Text(
                        "896212",
                        style: themeData.textTheme.headline4,
                      ),
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
                      Text("Monthly Average:",
                          style: themeData.textTheme.headline3),
                    ],
                  ),
                  addVerticalSpace(20),
                  Row(
                    children: [
                      Text(
                        "888888",
                        style: themeData.textTheme.headline4,
                      ),
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
                      Text("Quaterly Average:",
                          style: themeData.textTheme.headline3),
                    ],
                  ),
                  addVerticalSpace(20),
                  Row(
                    children: [
                      Text(
                        "898644",
                        style: themeData.textTheme.headline4,
                      ),
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
                      Text("Yearly Average:",
                          style: themeData.textTheme.headline3),
                    ],
                  ),
                  addVerticalSpace(20),
                  Row(
                    children: [
                      Text(
                        "898663",
                        style: themeData.textTheme.headline4,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
