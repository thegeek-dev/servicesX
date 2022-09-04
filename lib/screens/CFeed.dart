import 'package:google_fonts/google_fonts.dart';
import 'package:services/utils/all.dart';

class CFeed extends StatefulWidget {
  const CFeed({Key? key}) : super(key: key);

  @override
  _CFeedState createState() => _CFeedState();
}

class _CFeedState extends State<CFeed> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: PURPLE,
            iconTheme: IconThemeData(color: MAIN_COLOR, size: 30),
            leading: Icon(Icons.dynamic_feed),
            title: Text("Feed",
                style: GoogleFonts.balsamiqSans(
                    textStyle: TextStyle(
                        color: MAIN_COLOR,
                        fontWeight: FontWeight.w500,
                        fontSize: 22))),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.manage_accounts)),
              IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Expanded(
                              child: Dialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  elevation: 16,
                                  child: StatefulBuilder(builder:
                                      (BuildContext context,
                                          StateSetter setState) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          ListTile(
                                              leading: Icon(
                                                Icons.rule,
                                                size: 42,
                                                color: PURPLE,
                                              ),
                                              title: Text(
                                                "Community Guidelines",
                                                style: GoogleFonts.balsamiqSans(
                                                    textStyle: TextStyle(
                                                        color: COMPONENT_COLOR,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 22)),
                                              )),
                                          addVerticalSpace(10),
                                          ListTile(
                                              leading: Icon(
                                                Mdi.exclamation,
                                                size: 42,
                                                color: PURPLE,
                                              ),
                                              title: Text(
                                                "Violations/Strikes",
                                                style: GoogleFonts.balsamiqSans(
                                                    textStyle: TextStyle(
                                                        color: COMPONENT_COLOR,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 22)),
                                              )),
                                          addVerticalSpace(10),
                                          ListTile(
                                              leading: Icon(
                                                Mdi.heart,
                                                size: 42,
                                                color: PURPLE,
                                              ),
                                              title: Text(
                                                "Contribute",
                                                style: GoogleFonts.balsamiqSans(
                                                    textStyle: TextStyle(
                                                        color: COMPONENT_COLOR,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 22)),
                                              )),
                                        ],
                                      ),
                                    );
                                  })));
                        });
                  },
                  icon: Icon(Icons.info))
            ],
          ),
          body: Container(
              color: Colors.grey.withOpacity(0.3),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            PostCard(joined: true),
                            PostCard(joined: true),
                            PostCard(joined: true),
                            PostCard(joined: true),
                          ],
                        ),
                      ),
                    ),
                  ]))),
    );
  }
}
