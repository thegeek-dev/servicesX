import 'package:google_fonts/google_fonts.dart';
import 'package:services/screens/CComInfo.dart';
import 'package:services/utils/all.dart';

class PostCard extends StatelessWidget {
  final bool joined;
  const PostCard({Key? key, required this.joined}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          // border: Border.all(width: 1),
        ),
        //width: size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(vertical: 8),
                        leading: IconButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {},
                          icon:
                              Icon(Icons.circle, size: 50, color: Colors.white),
                        ),
                        title: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CComInfo()));
                                },
                                child: Text("Community Name",
                                    style: GoogleFonts.balsamiqSans(
                                        textStyle: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20))),
                              ),
                              Text("Posted by username",
                                  style: GoogleFonts.balsamiqSans(
                                      textStyle:
                                          themeData.textTheme.subtitle2)),
                            ],
                          ),
                        ),
                        trailing: TextButton(
                            onPressed: () {},
                            child: joined
                                ? TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Leave",
                                      style: GoogleFonts.balsamiqSans(
                                          textStyle: TextStyle(
                                              color: PURPLE,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 16)),
                                    ))
                                : TextButton(
                                    onPressed: () {},
                                    child: Text("Join",
                                        style: GoogleFonts.balsamiqSans(
                                            textStyle: TextStyle(
                                                color: PURPLE,
                                                fontWeight: FontWeight.w800,
                                                fontSize: 16))))),
                      ),
                    )
                  ],
                ),
                Container(
                  color: Colors.grey,
                  height: 1,
                  width: 0.82 * size.width,
                ),
                Row(children: [
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 8, 0, 8),
                          child: Container(
                            child: Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    "The title of post wil be here, If title is long,"
                                    " it too will be truncated!",
                                    style: GoogleFonts.balsamiqSans(
                                        textStyle: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.8),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20)),
                                  ),
                                  Text("Many novice writers tend to make a"
                                      " sharp distinction between content"
                                      " and style, thinking that a paper can"
                                      " be strong in one and weak in....")
                                ],
                              ),
                            ),
                          ),
                        ),
                        /*Padding(
                            padding: const EdgeInsets.fromLTRB(25, 8, 0, 8),
                            child: Container(),
                          ),*/
                      ],
                    ),
                  ),
                  Container(
                      width: 0.15 * size.width,
                      child: Expanded(
                          child: Row(
                        children: [
                          addline(0.5, size.height * 0.17),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 30,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.thumb_up_sharp,
                                      color: PURPLE,
                                    )),
                              ),
                              Text("6464"),
                              SizedBox(
                                height: 30,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.comment,
                                      color: PURPLE,
                                    )),
                              ),
                              Text("566"),
                              SizedBox(
                                height: 30,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Mdi.share,
                                      color: PURPLE,
                                    )),
                              ),
                            ],
                          ),
                        ],
                      )))
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
