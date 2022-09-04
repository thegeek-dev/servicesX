import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:services/custom/BorderIcon.dart';
import 'package:services/custom/OptionButton.dart';
import 'package:services/utils/constants.dart';
import 'package:services/utils/widget_functions.dart';
import 'package:services/custom/CardElements.dart';
import 'package:services/custom/VideoCard.dart';
import 'RankingPageParent.dart';
import 'StudioVideos.dart';
import 'package:services/custom/MyDrawer.dart';
import 'package:services/sample/studiodata.dart';

class StdPltDetail extends StatefulWidget {
  const StdPltDetail({Key? key}) : super(key: key);

  @override
  _StdPltDetailState createState() => _StdPltDetailState();
}

class _StdPltDetailState extends State<StdPltDetail> {
  ScrollController _scrollViewcontroller = ScrollController();
  bool _showImage = true;
  bool isScrollingDown = false;

  @override
  void initState() {
    super.initState();
    _scrollViewcontroller = ScrollController();
    _scrollViewcontroller.addListener(() {
      if (_scrollViewcontroller.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!isScrollingDown) {
          print('Scrolling');
          isScrollingDown = true;
          _showImage = false;
          setState(() {});
        }
      }
      if (_scrollViewcontroller.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (isScrollingDown) {
          print('Scrolling');
          isScrollingDown = false;
          _showImage = true;
          setState(() {});
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final List st_data = ST_DATA;
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Stack(
                  children: [
                    AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      height: _showImage ? size.height * 0.25 : 0,
                      child: Image.network(
                        "https://flitterx.com/myicon.jpg",
                        width: size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<CircleBorder>(
                                CircleBorder())),
                        onPressed: () {},
                        child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue.withOpacity(0.8),
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      right: 0,
                    ),
                    Positioned(
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<CircleBorder>(
                                CircleBorder())),
                        onPressed: () {},
                        child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue.withOpacity(0.8),
                          ),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      left: 0,
                    )
                  ],
                ),
                addVerticalline(0.5),
                Container(
                  color: Colors.white,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Playlist Name",
                          style: themeData.textTheme.headline3,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Colors.blue.withOpacity(0.3),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "WATCH",
                                    style: themeData.textTheme.headline4,
                                  )),
                            ),
                            addHorizontalSpace(5),
                            Container(
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Colors.blue.withOpacity(0.3),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "SHARE",
                                    style: themeData.textTheme.headline4,
                                  )),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                addVerticalline(0.5),
                Expanded(
                  child: Container(
                    child: ListView.builder(
                        controller: _scrollViewcontroller,
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
                                livewatched: st_data[index]["livewatched"],
                              ),
                              addVerticalSpace(10)
                            ],
                          );
                        }),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }

  @override
  void dispose() {
    _scrollViewcontroller.dispose();
    _scrollViewcontroller.removeListener(() {});
    super.dispose();
  }
}
