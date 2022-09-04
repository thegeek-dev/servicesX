import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:services/custom/BorderIcon.dart';
import 'package:services/custom/OptionButton.dart';
import 'package:services/screens/RankingPageHistory.dart';
import 'package:services/utils/constants.dart';
import 'package:services/utils/widget_functions.dart';
import 'package:services/custom/CardElements.dart';
import 'package:services/custom/VideoCard.dart';
import 'package:services/sample/studiodata.dart';
import 'package:services/screens/RankingPageOverview.dart';
import 'package:services/custom/MyDrawer.dart';

class RankingPageParent extends StatelessWidget {
  const RankingPageParent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _drawerOpener = GlobalKey<ScaffoldState>();
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    double padding = 25;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark));
    return SafeArea(
      child: Scaffold(
        key: _drawerOpener,
        drawer: MyDrawer(
          page: "RPP",
        ),
        body: Container(
          color: COLOR_BG,
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: TextButton(
                                onPressed: () {
                                  _drawerOpener.currentState!.openDrawer();
                                },
                                child: BorderIcon(
                                  height: 50,
                                  width: 50,
                                  child: Icon(
                                    Icons.menu,
                                    color: COMPONENT_COLOR,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            BorderIcon(
                                height: 50, width: 50, child: Icon(Icons.star)),
                            Text("Rankings",
                                style: themeData.textTheme.headline3),
                          ],
                        ),
                        Row(
                          children: [
                            BorderIcon(
                              height: 50,
                              width: 50,
                              //padding: sidePadding,
                              child: Icon(
                                Icons.account_circle_rounded,
                                color: COMPONENT_COLOR,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  addVerticalline(0.5),
                  DefaultTabController(
                      length: 2,
                      child: Expanded(
                        child: Column(
                          // mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              color: Colors.white,
                              child: TabBar(
                                  labelColor: Colors.blue,
                                  unselectedLabelColor: Colors.black,
                                  indicatorColor: Colors.blue,
                                  tabs: [
                                    Tab(
                                      text: "OVERVIEW",
                                    ),
                                    Tab(
                                      text: "HISTORY",
                                    )
                                  ]),
                            ),
                            addVerticalSpace(5),
                            Expanded(
                                child: TabBarView(
                                    physics: BouncingScrollPhysics(),
                                    children: [RPO(), RPH()]))
                          ],
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
