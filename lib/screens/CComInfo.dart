import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';
import 'package:services/utils/all.dart';

class CComInfo extends StatefulWidget {
  const CComInfo({Key? key}) : super(key: key);

  @override
  _CComInfoState createState() => _CComInfoState();
}

class _CComInfoState extends State<CComInfo> {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: PURPLE,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
              color: Colors.black,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(vertical: 8),
                      leading: IconButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {},
                        icon: Icon(Icons.circle, size: 50, color: Colors.white),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CComInfo()));
                              },
                              child: Text("Community Name",
                                  style: GoogleFonts.balsamiqSans(
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20))),
                            ),
                            Text("Badges",
                                style: GoogleFonts.balsamiqSans(
                                    textStyle: themeData.textTheme.subtitle2)),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.black,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Followers: 66651",
                          style: GoogleFonts.balsamiqSans(
                              textStyle:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                        ),
                        Text("Posts: 5165",
                            style: GoogleFonts.balsamiqSans(
                                textStyle: TextStyle(
                                    fontSize: 18, color: Colors.white)))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.black,
              child: TabBar(
                  labelColor: PURPLE,
                  unselectedLabelColor: Colors.white,
                  indicatorColor: PURPLE,
                  tabs: [
                    Tab(
                      text: "Posts",
                    ),
                    Tab(
                      text: "About",
                    ),
                  ]),
            ),
          ],
        ),
      ),
    ));
  }
}
