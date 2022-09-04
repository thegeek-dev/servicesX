import 'package:google_fonts/google_fonts.dart';
import 'package:services/utils/all.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  bool expanded = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.white, size: 26),
              backgroundColor: BLUE,
              title: Row(
                children: [
                  Icon(
                    Icons.explore,
                    color: Colors.white,
                  ),
                  addHorizontalSpace(10),
                  Text(
                    "Explore",
                    style: GoogleFonts.balsamiqSans(
                        textStyle:
                            TextStyle(color: Colors.white, fontSize: 22)),
                  )
                ],
              ),
              actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Valorant",
                          style: GoogleFonts.balsamiqSans(
                              textStyle: TextStyle(
                                  fontSize: 22, color: Colors.white))),
                      IconButton(
                          onPressed: () {
                            if (expanded) {
                              expanded = false;
                            } else {
                              expanded = true;
                            }
                            setState(() {});
                          },
                          icon: Icon(
                            Icons.arrow_downward,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    color: Colors.grey,
                    height: expanded ? 100 : 0,
                  )
                ],
              ),
            )));
  }
}
