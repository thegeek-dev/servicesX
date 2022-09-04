import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:services/custom/BorderIcon.dart';
import 'package:services/custom/OptionButton.dart';
import 'package:services/screens/AcountAndSettings.dart';
import 'package:services/utils/all.dart';
import 'package:services/utils/constants.dart';
import 'package:services/utils/widget_functions.dart';
import 'package:services/custom/CardElements.dart';
import 'package:services/custom/VideoCard.dart';
import 'RankingPageParent.dart';
import 'StudioVideos.dart';
import 'package:services/custom/MyDrawer.dart';

class StudioDashboard extends StatefulWidget {
  @override
  _StudioDashboardState createState() => _StudioDashboardState();
}

class _StudioDashboardState extends State<StudioDashboard> {
  GlobalKey<ScaffoldState> _drawerOpener = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    void RPPopener() {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => RankingPageParent()));
    }

    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    double padding = 25;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.greenAccent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark));
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        //Added From Android
        key: _drawerOpener,
        drawer: MyDrawer(
          page: "StDb",
        ),
        body: Container(
          color: COLOR_BG,
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              //SingleChildScrollView(
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //addVerticalline(0.5),
                  Container(
                    color: GREEN,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Text("Dashboard", style: themeData.textTheme.headline3),
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ACandSETTINGS()));
                            },
                            child: BorderIcon(
                              height: 50,
                              width: 50,
                              //padding: sidePadding,
                              child: Icon(
                                Icons.account_circle_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //addVerticalline(0.5),
                  Expanded(
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          CardElements(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      BorderIcon(
                                        height: 50,
                                        width: 50,
                                        //padding: sidePadding,
                                        child: Icon(
                                          Icons.account_circle_rounded,
                                          color: GREEN,
                                        ),
                                      ),
                                      Text(
                                        "Account Information",
                                        style: themeData.textTheme.headline4,
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      addHorizontalSpace(50),
                                      Text(
                                        "Subscribers: ",
                                        style: themeData.textTheme.headline5,
                                      ),
                                    ],
                                  ),
                                  addVerticalSpace(5),
                                  Row(
                                    children: [
                                      addHorizontalSpace(50),
                                      Text(
                                        "Members: ",
                                        style: themeData.textTheme.headline5,
                                      ),
                                    ],
                                  ),
                                  addVerticalSpace(5),
                                  Row(
                                    children: [
                                      addHorizontalSpace(50),
                                      Text(
                                        "Ranking: ",
                                        style: themeData.textTheme.headline5,
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
                              padding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 25),
                              child: Column(
                                children: [
                                  addVerticalSpace(10),
                                  Row(
                                    children: [
                                      Text("Analytics",
                                          style: themeData.textTheme.headline4),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Last 1 month",
                                        style: themeData.textTheme.bodyText2,
                                      )
                                    ],
                                  ),
                                  addVerticalSpace(15),
                                  Row(
                                    children: [
                                      Text("Views: ",
                                          style: themeData.textTheme.headline5)
                                    ],
                                  ),
                                  addVerticalSpace(5),
                                  Row(
                                    children: [
                                      Text("Comments: ",
                                          style: themeData.textTheme.headline5)
                                    ],
                                  ),
                                  addVerticalSpace(5),
                                  Row(
                                    children: [
                                      Text("Likes: ",
                                          style: themeData.textTheme.headline5)
                                    ],
                                  ),
                                  addVerticalSpace(25),
                                  Row(
                                    children: [
                                      Text(
                                        "VIEW MORE",
                                        style: TextStyle(
                                            color: GREEN, fontSize: 14),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          addVerticalSpace(8),
                          CardElements(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 25),
                              child: Column(
                                children: [
                                  addVerticalSpace(10),
                                  Row(
                                    children: [
                                      Text("Ranking",
                                          style: themeData.textTheme.headline4),
                                    ],
                                  ),
                                  addVerticalSpace(15),
                                  Row(
                                    children: [
                                      Text("Current: ",
                                          style: themeData.textTheme.headline5)
                                    ],
                                  ),
                                  addVerticalSpace(5),
                                  Row(
                                    children: [
                                      Text("Previous: ",
                                          style: themeData.textTheme.headline5)
                                    ],
                                  ),
                                  addVerticalSpace(5),
                                  Row(
                                    children: [
                                      Text("Particular: ",
                                          style: themeData.textTheme.headline5)
                                    ],
                                  ),
                                  addVerticalSpace(25),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                        child: TextButton(
                                          style: ButtonStyle(
                                              padding:
                                                  MaterialStateProperty.all(
                                                      EdgeInsets.all(0))),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        RankingPageParent()));
                                          },
                                          child: Text(
                                            "VIEW MORE",
                                            style: TextStyle(
                                                color: GREEN, fontSize: 14),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          addVerticalSpace(8),
                          CardElements(
                            child: Column(
                              children: [
                                addVerticalSpace(10),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 15),
                                  child: Row(
                                    children: [
                                      Text("Videos",
                                          style: themeData.textTheme.headline4),
                                    ],
                                  ),
                                ),
                                VideoCard(
                                  url:
                                      "https://flitterx.com/SampleThumbnail1.jpg",
                                  views: "50",
                                  comments: "50",
                                  likes: "50",
                                  caption:
                                      "Yep, this is Caption-1, I need to write this to make it long!",
                                  livewatched: "100",
                                  time: Duration(minutes: 10, seconds: 12),
                                ),
                                addVerticalSpace(5),
                                VideoCard(
                                  url:
                                      "https://flitterx.com/SampleThumbnail2.jpg",
                                  views: "50",
                                  comments: "50",
                                  likes: "50",
                                  caption:
                                      "And this is Caption-2. Btw that was obivious wasn't it! Hahahah!",
                                  livewatched: "100",
                                  time: Duration(minutes: 15, seconds: 17),
                                ),
                                addVerticalSpace(5),
                                VideoCard(
                                  url:
                                      "https://flitterx.com/SampleThumbnail3.jpg",
                                  views: "50",
                                  comments: "50",
                                  likes: "50",
                                  caption:
                                      "Fuck the Caption-3, I am very angry now!",
                                  livewatched: "100",
                                  time: Duration(minutes: 15, seconds: 17),
                                ),
                                addVerticalSpace(5),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 15),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                        child: TextButton(
                                          style: ButtonStyle(
                                              padding:
                                                  MaterialStateProperty.all(
                                                      EdgeInsets.all(0))),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        StudioVideos()));
                                          },
                                          child: Text(
                                            "VIEW MORE",
                                            style: TextStyle(
                                                color: GREEN, fontSize: 14),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: GREEN,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: TextButton(
                            onPressed: () {},
                            child: BorderIcon(
                              height: 50,
                              width: 50,
                              child: Icon(
                                Mdi.satelliteUplink,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ACandSETTINGS()));
                            },
                            child: BorderIcon(
                              height: 50,
                              width: 50,
                              //padding: sidePadding,
                              child: Icon(
                                Icons.upload,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //)
            ],
          ),
        ),
      ),
    );
  }
}
