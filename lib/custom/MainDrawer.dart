import 'package:flutter/cupertino.dart';
import 'package:services/screens/CommunityHome.dart';
import 'package:services/utils/all.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  bool isOpen = false;
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 0), () {
      setState(() {
        isOpen = true;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    isOpen = false;
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.horizontal(right: Radius.circular(10))),
              //height: size.height - 83.5,
              width: size.width * 3 / 4,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [],
              )),
        ),
      ],
    );
  }
}
