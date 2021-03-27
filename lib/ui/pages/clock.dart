import 'package:bclock/ui/view/clock.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bclock/ui/holder/zoomableScaffold.dart';
import 'package:provider/provider.dart';

import 'drawer_menu.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
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
        headerText: "시계",
        menuScreen: MenuScreen(),
        contentScreen: Layout(
          contentBuilder: (cc) => Container(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(16, 3, 16, 6),
                    margin:
                        EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 0),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.width,
                      child: ClockPage(),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
