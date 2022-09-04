import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:services/custom/BorderIcon.dart';
import 'package:services/custom/HVideoCard.dart';
import 'package:services/custom/OptionButton.dart';
import 'package:services/sample/studiodata.dart';
import 'package:services/screens/AcountAndSettings.dart';
import 'package:services/screens/CommunityHome.dart';
import 'package:services/screens/Explore.dart';
import 'package:services/screens/MainNotification.dart';
import 'package:services/screens/StudioDashboard.dart';
import 'package:services/utils/constants.dart';
import 'package:services/utils/widget_functions.dart';
import 'package:services/custom/CardElements.dart';
import 'package:services/custom/VideoCard.dart';
import 'RankingPageParent.dart';
import 'StudioVideos.dart';
import 'package:mdi/mdi.dart';
import 'dart:async';
import 'package:services/custom/MainDrawer.dart';
import 'package:services/screens/AcountAndSettings.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final List st_data = ST_DATA;
    /* SystemChrome.setEnabledSystemUIOverlays(
        [SystemUiOverlay.top, SystemUiOverlay.bottom]);*/

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarColor: Color.fromRGBO(0, 0, 255, 1),
        systemNavigationBarColor: Colors.black));
    FocusScopeNode currentFocus = FocusScope.of(context);
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    return WillPopScope(
      onWillPop: () async {
        if (!currentFocus.hasPrimaryFocus && currentFocus.hasFocus) {
          FocusManager.instance.primaryFocus!.unfocus();
          return false;
        }
        return true;
      },
      child: SafeArea(
          child: GestureDetector(
        onTap: () {
          if (!currentFocus.hasPrimaryFocus && currentFocus.hasFocus) {
            FocusManager.instance.primaryFocus!.unfocus();
          }
        },
        child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            iconTheme: IconThemeData(color: MAIN_COLOR),
            backgroundColor: BLUE,
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "FX Watch",
                    style: GoogleFonts.balsamiqSans(
                        textStyle:
                            TextStyle(fontSize: 30, color: Colors.white)),
                  ),
                  IconButton(
                      onPressed: () {
                        //Navigator.of(context).pop();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CommunityHome()));
                      },
                      icon: Icon(
                        Mdi.alphaCCircle,
                        size: 30,
                      )),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StudioDashboard()));
                      },
                      icon: Icon(
                        Mdi.alphaSCircle,
                        size: 30,
                      )),
                ],
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 27,
                ),
              ),
              addHorizontalSpace(15),
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MainNotification()));
                },
                icon: Icon(
                  Icons.notifications,
                  size: 27,
                ),
                tooltip: "Notifications",
              ),
            ],
          ),
          body: Container(
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Container(
                        color: Colors.transparent,
                        height: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: ListView.builder(
                              physics: BouncingScrollPhysics(),
                              itemCount: ST_DATA.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    HVideoCard(
                                      url: st_data[index]["url"],
                                      time: st_data[index]["time"],
                                      views: st_data[index]["views"],
                                      comments: st_data[index]["comments"],
                                      likes: st_data[index]["likes"],
                                      caption: st_data[index]["caption"],
                                      livewatched: st_data[index]
                                          ["livewatched"],
                                    ),
                                    addVerticalSpace(10)
                                  ],
                                );
                              }),
                        ))),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: BLUE,
                      ),
                      height: size.height * 0.07,
                      width: size.width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Material(
                              elevation: 30,
                              color: Colors.transparent,
                              child: IconButton(
                                  tooltip: "Home",
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.home,
                                    color: MAIN_COLOR,
                                    size: 36,
                                  )),
                            ),
                            Material(
                              elevation: 30,
                              color: Colors.transparent,
                              child: IconButton(
                                  tooltip: "Explore",
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Explore()));
                                  },
                                  icon: Icon(
                                    Icons.explore_outlined,
                                    color: MAIN_COLOR,
                                    size: 36,
                                  )),
                            ),
                            Material(
                              elevation: 30,
                              color: Colors.transparent,
                              child: IconButton(
                                  tooltip: "Library",
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.video_library,
                                    color: MAIN_COLOR,
                                    size: 36,
                                  )),
                            ),
                            Material(
                              elevation: 30,
                              color: Colors.transparent,
                              child: IconButton(
                                  tooltip: "Account",
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.account_box,
                                    color: MAIN_COLOR,
                                    size: 36,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
