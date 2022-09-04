import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:services/custom/BorderIcon.dart';
import 'package:services/custom/OptionButton.dart';
import 'package:services/utils/constants.dart';
import 'package:services/utils/widget_functions.dart';
import 'package:services/custom/CardElements.dart';
import 'package:services/custom/VideoCard.dart';
import 'package:services/sample/studiodata.dart';
import 'package:services/custom/MyDrawer.dart';

class StudioVideos extends StatefulWidget {
  @override
  _StudioVideosState createState() => _StudioVideosState();
}

enum SomeValues { Option1, Option2, Option3, Option4 }

class _StudioVideosState extends State<StudioVideos> {
  GlobalKey<ScaffoldState> _drawerOpener = GlobalKey<ScaffoldState>();
  SomeValues? _value = SomeValues.Option1;
  @override
  Widget build(BuildContext context) {
    final List st_data = ST_DATA;
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
          page: "StVd",
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
                            addHorizontalSpace(50)
                          ],
                        ),
                        Text("Videos", style: themeData.textTheme.headline3),
                        Row(
                          children: [
                            BorderIcon(
                              height: 50,
                              width: 50,
                              //padding: sidePadding,
                              child: Icon(
                                Icons.search,
                                color: COMPONENT_COLOR,
                              ),
                            ),
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
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              addHorizontalSpace(5),
                              Text("LIVE", style: mystyle1),
                              addHorizontalSpace(20),
                              Text(
                                "UPLOADS",
                                style: TextStyle(
                                    color: COLOR_BLACK,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    decoration: TextDecoration.underline),
                              )
                            ],
                          ),
                          //AddedNow
                          Row(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          int? selectedRadio = 0;
                                          return Expanded(child: Dialog(child:
                                              StatefulBuilder(builder:
                                                  (BuildContext context,
                                                      StateSetter setState) {
                                            return Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    "Filters",
                                                    style: themeData
                                                        .textTheme.headline2,
                                                  ),
                                                  addVerticalSpace(0),
                                                  ListTile(
                                                    title: Text("Option1",
                                                        style: mystyle2),
                                                    trailing: Radio(
                                                        value:
                                                            SomeValues.Option1,
                                                        groupValue: _value,
                                                        onChanged: (SomeValues?
                                                            value) {
                                                          setState(() =>
                                                              _value =
                                                                  SomeValues
                                                                      .Option1);
                                                        }),
                                                  ),
                                                  ListTile(
                                                    title: Text("Option2",
                                                        style: mystyle2),
                                                    trailing: Radio(
                                                        value:
                                                            SomeValues.Option2,
                                                        groupValue: _value,
                                                        onChanged: (SomeValues?
                                                            value) {
                                                          setState(() =>
                                                              _value =
                                                                  SomeValues
                                                                      .Option2);
                                                        }),
                                                  ),
                                                  ListTile(
                                                    title: Text("Option3",
                                                        style: mystyle2),
                                                    trailing: Radio(
                                                        value:
                                                            SomeValues.Option3,
                                                        groupValue: _value,
                                                        onChanged: (SomeValues?
                                                            value) {
                                                          setState(() =>
                                                              _value =
                                                                  SomeValues
                                                                      .Option3);
                                                        }),
                                                  ),
                                                  ListTile(
                                                    title: Text("Option4",
                                                        style: mystyle2),
                                                    trailing: Radio(
                                                        value:
                                                            SomeValues.Option4,
                                                        groupValue: _value,
                                                        onChanged: (SomeValues?
                                                            value) {
                                                          setState(() =>
                                                              _value =
                                                                  SomeValues
                                                                      .Option4);
                                                        }),
                                                  )
                                                ],
                                              ),
                                            );
                                          })));
                                        });
                                  },
                                  child: Tooltip(
                                    message: "Filters",
                                    child: Icon(
                                      Icons.filter_list,
                                      color: Colors.black,
                                    ),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  addVerticalline(0.5),
                  Expanded(
                      child: Container(
                          color: Colors.white,
                          height: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: ListView.builder(
                                physics: BouncingScrollPhysics(),
                                itemCount: ST_DATA.length,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      VideoCard(
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
                          )))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
