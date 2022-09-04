import 'package:services/custom/NotificationCard.dart';
import 'package:services/utils/all.dart';

class MainNotification extends StatefulWidget {
  const MainNotification({Key? key}) : super(key: key);

  @override
  _MainNotificationState createState() => _MainNotificationState();
}

class _MainNotificationState extends State<MainNotification> {
  @override
  Widget build(BuildContext context) {
    final List notif_data = Notif_Data;
    FocusScopeNode currentFocus = FocusScope.of(context);
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    return SafeArea(
        child: Container(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: MAIN_ACCENT,
          iconTheme: IconThemeData(color: MAIN_COLOR),
          title: Container(
            child: Text(
              "Notifications",
              style: WhiteHeadline,
            ),
          ),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
        ),
        body: DefaultTabController(
          length: 1,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(color: MAIN_ACCENT, boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: Offset(0, 2),
                  )
                ]),
                /*child: TabBar(
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.white54,
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(
                        text: "GENERAL",
                      ),
                    ]),*/
              ),
              addVerticalSpace(5),
              Expanded(
                  child:
                      TabBarView(physics: BouncingScrollPhysics(), children: [
                Expanded(
                    child: Container(
                        color: Colors.white,
                        height: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: ListView.builder(
                              physics: BouncingScrollPhysics(),
                              itemCount: Notif_Data.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    NotificationCard(
                                        heading: notif_data[index]["heading"],
                                        content: notif_data[index]["content"]),
                                    addVerticalSpace(10)
                                  ],
                                );
                              }),
                        ))),
              ]))
            ],
          ),
        ),
      ),
    ));
  }
}
