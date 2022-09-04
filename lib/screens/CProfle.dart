import 'package:google_fonts/google_fonts.dart';
import 'package:services/utils/all.dart';

class Cprofile extends StatefulWidget {
  const Cprofile({Key? key}) : super(key: key);

  @override
  _CprofileState createState() => _CprofileState();
}

class _CprofileState extends State<Cprofile> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: PURPLE,
        iconTheme: IconThemeData(color: MAIN_COLOR),
        title: Text("Account",
            style: GoogleFonts.balsamiqSans(textStyle: WhiteHeadline)),
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Expanded(child: Dialog(child: StatefulBuilder(
                          builder:
                              (BuildContext context, StateSetter setState) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                                leading: Icon(
                                  Icons.account_box,
                                  size: 42,
                                  color: PURPLE,
                                ),
                                title: Text(
                                  "Account",
                                  style: GoogleFonts.balsamiqSans(
                                      textStyle: TextStyle(
                                          color: COMPONENT_COLOR,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 22)),
                                )),
                            addVerticalSpace(10),
                            ListTile(
                                leading: Icon(
                                  Icons.link,
                                  size: 42,
                                  color: PURPLE,
                                ),
                                title: Text(
                                  "Link",
                                  style: GoogleFonts.balsamiqSans(
                                      textStyle: TextStyle(
                                          color: COMPONENT_COLOR,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 22)),
                                )),
                            addVerticalSpace(10),
                            ListTile(
                                leading: Icon(
                                  Icons.settings,
                                  size: 42,
                                  color: PURPLE,
                                ),
                                title: Text(
                                  "Settings",
                                  style: GoogleFonts.balsamiqSans(
                                      textStyle: TextStyle(
                                          color: COMPONENT_COLOR,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 22)),
                                )),
                            addVerticalSpace(10),
                            ListTile(
                                leading: Icon(
                                  Icons.local_activity,
                                  size: 42,
                                  color: PURPLE,
                                ),
                                title: Text(
                                  "Activity",
                                  style: GoogleFonts.balsamiqSans(
                                      textStyle: TextStyle(
                                          color: COMPONENT_COLOR,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 22)),
                                )),
                            addVerticalSpace(10),
                            ListTile(
                                leading: Icon(
                                  Icons.monetization_on,
                                  size: 42,
                                  color: PURPLE,
                                ),
                                title: Text(
                                  "Earning",
                                  style: GoogleFonts.balsamiqSans(
                                      textStyle: TextStyle(
                                          color: COMPONENT_COLOR,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 22)),
                                ))
                          ],
                        );
                      })));
                    });
              },
              icon: Icon(Icons.menu))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 8),
              leading: IconButton(
                padding: EdgeInsets.all(0),
                onPressed: () {},
                icon: Icon(
                  Icons.circle,
                  size: 50,
                ),
              ),
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name",
                        style: GoogleFonts.balsamiqSans(
                            textStyle: themeData.textTheme.headline3)),
                    Text("Badges",
                        style: GoogleFonts.balsamiqSans(
                            textStyle: themeData.textTheme.subtitle2)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
