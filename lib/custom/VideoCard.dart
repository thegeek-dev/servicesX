import 'package:flutter/material.dart';
import 'package:services/utils/constants.dart';
import 'package:services/utils/widget_functions.dart';
import 'package:services/utils/widget_functions.dart';

class VideoCard extends StatelessWidget {
  final String url;
  final String views;
  final String comments;
  final String likes;
  final String caption;
  final String livewatched;
  final Duration time;
  String _printDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
    //${twoDigits(duration.inHours)}:
  }

  const VideoCard({
    Key? key,
    required this.url,
    required this.time,
    required this.views,
    required this.comments,
    required this.likes,
    required this.caption,
    required this.livewatched,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    double currentwidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        //border: Border.all(color: Colors.blueGrey),
        borderRadius: BorderRadius.all(Radius.circular(15)),
        /*boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 3),
            )
          ]*/
      ),
      width: MediaQuery.of(context).size.width,
      height: 152,
      child: Padding(
        padding:
            EdgeInsets.symmetric(vertical: 5, horizontal: currentwidth * 0.01),
        child: Row(
          children: [
            Container(
              //width: currentwidth * 0.4,
              //color: Colors.white,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      url,
                      width: currentwidth * 0.4,
                      height: 140,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                width: 0.5 * currentwidth,
                child: Column(
                  children: [
                    Container(
                        height: 75,
                        child: Text(caption,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 16))),
                    Container(
                        height: 65,
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.remove_red_eye,
                                        size: 18,
                                        color: GREEN,
                                      ),
                                      addHorizontalSpace(10),
                                      Text("$views",
                                          style: themeData.textTheme.headline6),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(_printDuration(time).toString(),
                                          style: themeData.textTheme.headline6),
                                      addHorizontalSpace(10),
                                      Icon(
                                        Icons.alarm,
                                        size: 18,
                                        color: GREEN,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            addVerticalSpace(4),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.thumb_up,
                                        size: 18,
                                        color: GREEN,
                                      ),
                                      addHorizontalSpace(10),
                                      Text("$likes",
                                          style: themeData.textTheme.headline6)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("$comments",
                                          style: themeData.textTheme.headline6),
                                      addHorizontalSpace(10),
                                      Icon(
                                        Icons.message,
                                        size: 18,
                                        color: GREEN,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            addVerticalSpace(4),
                            Container(
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.live_tv,
                                        size: 18,
                                        color: GREEN,
                                      ),
                                      addHorizontalSpace(5),
                                      Text(
                                        "Live Watched: ",
                                        style: themeData.textTheme.bodyText2,
                                      ),
                                      Text("$livewatched",
                                          style: themeData.textTheme.bodyText1)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
