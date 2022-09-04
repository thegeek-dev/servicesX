import 'package:google_fonts/google_fonts.dart';
import 'package:services/sample/studiodata.dart';
import 'package:services/utils/all.dart';

class HVideoCard extends StatelessWidget {
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

  const HVideoCard(
      {Key? key,
      required this.url,
      required this.views,
      required this.comments,
      required this.likes,
      required this.caption,
      required this.livewatched,
      required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List st_data = ST_DATA;
    final ThemeData themeData = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                url,
                height: 200,
                width: size.width * 0.80,
                fit: BoxFit.fill,
              ),
              Container(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 30,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Mdi.heart,
                                color: Colors.white,
                              )),
                        ),
                        Text(likes),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 30,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.remove_red_eye_sharp,
                                color: Colors.white,
                              )),
                        ),
                        Text(views),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 30,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Mdi.clock,
                                color: Colors.white,
                              )),
                        ),
                        Text(_printDuration(time))
                      ],
                    ),
                    SizedBox(
                      height: 30,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Mdi.share,
                            color: Colors.white,
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Mdi.alphaCCircleOutline,
                color: Colors.white,
                size: 42,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 20, 0),
                    child: Row(
                      children: [
                        Text(caption,
                            style: GoogleFonts.balsamiqSans(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20))),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 20, 5),
                    child: Row(
                      children: [
                        Text("Channel Name",
                            style: GoogleFonts.balsamiqSans(
                                textStyle: TextStyle(
                                    //color: Colors.white,
                                    //fontWeight: FontWeight.w700,
                                    fontSize: 14))),
                      ],
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
