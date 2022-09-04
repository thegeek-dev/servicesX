import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:services/custom/BorderIcon.dart';
import 'package:services/custom/OptionButton.dart';
import 'package:services/screens/StudioDashboard.dart';
import 'package:services/utils/constants.dart';
import 'package:services/utils/widget_functions.dart';
import 'package:services/custom/CardElements.dart';
import 'package:services/custom/VideoCard.dart';
import 'package:services/screens/RankingPageParent.dart';
import 'package:services/screens/StudioVideos.dart';

class MyDrawer extends StatefulWidget {
  final String page;
  const MyDrawer({Key? key, required this.page}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  bool stdb = false;
  bool RPP = false;
  bool StVd = false;
  @override
  Widget build(BuildContext context) {
    switch (widget.page) {
      case "StDb":
        stdb = true;
        break;
      case "RPP":
        RPP = true;
        break;
      case "StVd":
        StVd = true;
        break;

      default:
    }
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    return Drawer(
      child: Container(
        color: Colors.black,
        child: Column(
          children: [
            addVerticalSpace(0.04 * size.height),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Studio",
                  style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            addVerticalSpace(size.height * 0.04),
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StudioDashboard()));
              },
              title: Text(
                "Dasboard",
                style: themeData.textTheme.headline3,
              ),
              leading: Icon(
                Icons.dashboard,
                color: Colors.white70,
              ),
              selected: stdb,
              selectedTileColor: GREEN,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RankingPageParent()));
              },
              title: Text(
                "Ranking",
                style: themeData.textTheme.headline3,
              ),
              leading: Icon(
                Icons.star,
                color: Colors.white70,
              ),
              selected: RPP,
              selectedTileColor: Colors.blue.withAlpha(40),
            ),
            ListTile(
              title: Text(
                "Analytics",
                style: themeData.textTheme.headline3,
              ),
              leading: Icon(
                Icons.analytics,
                color: Colors.white70,
              ),
              selectedTileColor: Colors.blue.withAlpha(40),
            ),
            ListTile(
              title: Text(
                "Playlists",
                style: themeData.textTheme.headline3,
              ),
              leading: Icon(
                Icons.playlist_play,
                color: Colors.white70,
              ),
              selectedTileColor: Colors.white70,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StudioVideos()));
              },
              title: Text(
                "Videos",
                style: themeData.textTheme.headline3,
              ),
              leading: Icon(
                Icons.video_collection,
                color: Colors.white70,
              ),
              selected: StVd,
              selectedTileColor: Colors.white70,
            ),
            ListTile(
              title: Text(
                "Community",
                style: themeData.textTheme.headline3,
              ),
              leading: Icon(
                Icons.people,
                color: Colors.white70,
              ),
              selectedTileColor: Colors.white70,
            ),
          ],
        ),
      ),
    );
  }
}
