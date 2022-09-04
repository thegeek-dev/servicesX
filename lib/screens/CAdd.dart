import 'package:services/utils/all.dart';

import 'RankingPageHistory.dart';
import 'RankingPageOverview.dart';

class CAdd extends StatefulWidget {
  const CAdd({Key? key}) : super(key: key);

  @override
  _CAddState createState() => _CAddState();
}

class _CAddState extends State<CAdd> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    final double safeheight = size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          DefaultTabController(
              length: 3,
              child: Expanded(
                child: Container(
                  //height: safeheight,
                  child: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: TabBarView(
                            physics: BouncingScrollPhysics(),
                            children: [
                              Column(),
                              SingleChildScrollView(
                                child: Expanded(
                                  child: Column(
                                    children: [
                                      addVerticalSpace(50),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                                color: Colors.grey
                                                    .withOpacity(0.2),
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 15),
                                                  child: TextField(
                                                    maxLines: 1,
                                                    style: TextStyle(
                                                        color: COLOR_BLACK,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 16),
                                                    decoration: InputDecoration(
                                                      hintText: "Title",
                                                      hintStyle: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 16),
                                                    ),
                                                  ),
                                                )),
                                            addVerticalSpace(50),
                                            Container(
                                                color: Colors.grey
                                                    .withOpacity(0.2),
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 15),
                                                  child: TextField(
                                                    maxLines: 15,
                                                    style: TextStyle(
                                                        color: COLOR_BLACK,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 16),
                                                    decoration: InputDecoration(
                                                      hintText: "Content",
                                                      hintStyle: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 16),
                                                    ),
                                                  ),
                                                )),
                                            addVerticalSpace(50),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 15),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    color: PURPLE,
                                                    child: TextButton(
                                                        onPressed: () {},
                                                        child: Text(
                                                          "Post",
                                                          style: TextStyle(
                                                              fontSize: 22,
                                                              color:
                                                                  Colors.white),
                                                        )),
                                                  ),
                                                  Container(
                                                    color: PURPLE,
                                                    child: TextButton(
                                                        onPressed: () {},
                                                        child: Text(
                                                          "Save Draft",
                                                          style: TextStyle(
                                                              fontSize: 22,
                                                              color:
                                                                  Colors.white),
                                                        )),
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
                              Column()
                            ]),
                      ),
                      Container(
                        color: Colors.white,
                        child: TabBar(
                            labelColor: PURPLE,
                            unselectedLabelColor: Colors.black,
                            indicatorColor: PURPLE,
                            tabs: [
                              Tab(
                                icon: Icon(Icons.image),
                              ),
                              Tab(
                                icon: Icon(
                                  Icons.text_format,
                                  size: 36,
                                ),
                              ),
                              Tab(icon: Icon(Icons.videocam))
                            ]),
                      ),
                      addVerticalSpace(5),
                    ],
                  ),
                ),
              )),
        ],
      ),
    ));
  }
}
