import 'package:bclock/ui/view/alarm.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bclock/ui/holder/zoomableScaffold.dart';
import 'package:provider/provider.dart';

import 'drawer_menu.dart';

class Alarm extends StatefulWidget {
  Alarm({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AlarmState createState() => _AlarmState();
}

class _AlarmState extends State<Alarm> with TickerProviderStateMixin {
  MenuController menuController;

  @override
  void initState() {
    super.initState();

    menuController = new MenuController(
      vsync: this,
    )..addListener(
        () => setState(
          () {},
        ),
      );
  }

  @override
  void dispose() {
    menuController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );
    return ChangeNotifierProvider(
      create: (context) => menuController,
      child: ZoomableScaffold(
        headerText: "알람",
        menuScreen: MenuScreen(),
        contentScreen: Layout(
          contentBuilder: (cc) => Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(16, 3, 16, 6),
                  margin: EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 0),
                  child: AlarmPage(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
