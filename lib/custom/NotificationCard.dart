import 'package:google_fonts/google_fonts.dart';
import 'package:services/utils/all.dart';

class NotificationCard extends StatefulWidget {
  final String heading;
  final String content;
  const NotificationCard(
      {Key? key, required this.heading, required this.content})
      : super(key: key);

  @override
  _NotificationCardState createState() => _NotificationCardState();
}

class _NotificationCardState extends State<NotificationCard> {
  @override
  Widget build(BuildContext context) {
    final String heading = widget.heading;
    final String content = widget.content;
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("$heading",
                style: GoogleFonts.balsamiqSans(
                    textStyle: themeData.textTheme.headline3)),
            addVerticalline(0.5),
            addVerticalSpace(5),
            Text("$content",
                style: GoogleFonts.balsamiqSans(
                  textStyle: themeData.textTheme.bodyText2,
                ))
          ],
        ),
      ),
    );
  }
}
