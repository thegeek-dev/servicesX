import 'package:google_fonts/google_fonts.dart';
import 'package:services/screens/CAdd.dart';
import 'package:services/screens/CFeed.dart';
import 'package:services/screens/CProfle.dart';
import 'package:services/screens/MainNotification.dart';
import 'package:services/screens/StudioDashboard.dart';
import 'package:services/utils/all.dart';

class CommunityHome extends StatefulWidget {
  const CommunityHome({Key? key}) : super(key: key);

  @override
  _CommunityHomeState createState() => _CommunityHomeState();
}

class _CommunityHomeState extends State<CommunityHome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Container(
      //color: Colors.black,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          iconTheme: IconThemeData(color: MAIN_COLOR),
          backgroundColor: PURPLE,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    icon: Icon(
                      Mdi.alphaFCircle,
                      size: 30,
                    )),
                Text(
                  "Socialize",
                  style: GoogleFonts.balsamiqSans(
                      textStyle: TextStyle(fontSize: 30, color: Colors.white)),
                ),
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
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Cprofile()));
              },
              icon: Icon(
                Icons.account_circle,
                size: 27,
              ),
              tooltip: "Account",
            ),
          ],
        ),
        body: Container(
          color: Colors.black.withOpacity(0.8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      PostCard(joined: true),
                      PostCard(joined: false),
                      PostCard(joined: true),
                      PostCard(joined: false)
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: PURPLE,
                    ),
                    height: size.height * 0.07,
                    width: size.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(),
                          Material(
                            elevation: 30,
                            color: Colors.transparent,
                            child: IconButton(
                                tooltip: "Communities",
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CFeed()));
                                },
                                icon: Icon(
                                  Icons.people,
                                  color: MAIN_COLOR,
                                  size: 36,
                                )),
                          ),
                          Material(
                            elevation: 30,
                            color: Colors.transparent,
                            child: Container(
                              child: IconButton(
                                  tooltip: "Create",
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => CAdd()));
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    color: MAIN_COLOR,
                                    size: 36,
                                  )),
                            ),
                          ),
                          Material(
                            elevation: 30,
                            color: Colors.transparent,
                            child: IconButton(
                                tooltip: "Notifications",
                                onPressed: () {},
                                icon: Icon(
                                  Icons.notifications_active,
                                  color: MAIN_COLOR,
                                  size: 36,
                                )),
                          ),
                          Container()
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
    ));
  }
}
