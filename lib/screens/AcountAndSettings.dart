import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:services/custom/BorderIcon.dart';
import 'package:services/custom/OptionButton.dart';
import 'package:services/utils/constants.dart';
import 'package:services/utils/widget_functions.dart';
import 'package:services/custom/CardElements.dart';
import 'package:services/custom/VideoCard.dart';
import 'RankingPageParent.dart';
import 'StudioVideos.dart';
import 'package:services/custom/MyDrawer.dart';
import 'package:mdi/mdi.dart';
import 'package:services/screens/StudioDashboard.dart';

class ACandSETTINGS extends StatelessWidget {
  const ACandSETTINGS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Icon(
                              Mdi.windowClose,
                              size: 25,
                              color: Colors.black,
                            ))
                      ],
                    ),
                  ),
                  addVerticalline(0.5),
                  addVerticalSpace(10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Icon(
                          Icons.account_circle,
                          size: 40,
                        ),
                        addHorizontalSpace(15),
                        Text("Neeraj Patel",
                            style: GoogleFonts.balsamiqSans(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w400))),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      addHorizontalSpace(65),
                      TextButton(
                          onPressed: () {}, child: Text("Edit Your Account"))
                    ],
                  ),
                  ListTile(
                    title: Text(
                      "Add Account",
                      style: GoogleFonts.balsamiqSans(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w400)),
                    ),
                    leading: Icon(Mdi.accountPlus),
                  ),
                  addVerticalline(0.5),
                  ListTile(
                    title: Text(
                      "Your Channel",
                      style: GoogleFonts.balsamiqSans(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w400)),
                    ),
                    leading: Icon(
                      Mdi.accountBoxOutline,
                      color: Colors.black.withOpacity(0.75),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Settings",
                      style: GoogleFonts.balsamiqSans(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w400)),
                    ),
                    leading: Icon(
                      Icons.settings,
                      color: Colors.black.withOpacity(0.75),
                    ),
                  ),
                  ListTile(
                    title: Text("Help",
                        style: GoogleFonts.balsamiqSans(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w400))),
                    leading: Icon(
                      Mdi.helpRhombusOutline,
                      color: Colors.black.withOpacity(0.75),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Feedback",
                      style: GoogleFonts.balsamiqSans(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w400)),
                    ),
                    leading: Icon(
                      Icons.feedback_outlined,
                      color: Colors.black.withOpacity(0.75),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StudioDashboard()));
                    },
                    title: Text("FlitterX Studio",
                        style: GoogleFonts.balsamiqSans(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w400))),
                    leading: Icon(
                      Mdi.gamepad,
                      color: Colors.black.withOpacity(0.75),
                    ),
                    trailing: Icon(
                      Icons.open_in_new,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Privacy Policy",
                          )),
                      Icon(
                        Mdi.circle,
                        size: 7,
                        color: Colors.blue,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Terms & Conditionss",
                          )),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
