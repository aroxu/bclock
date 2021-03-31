import 'package:bclock/ui/pages/alarm.dart';
import 'package:bclock/ui/pages/clock.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bclock/ui/holder/zoomableScaffold.dart';
import 'package:provider/provider.dart';

class MenuScreen extends StatelessWidget {
  // final List<MenuItem> options = [
  //   MenuItem(FontAwesomeIcons.clock, '시계'),
  //   MenuItem(Icons.alarm, '알람'),
  //   MenuItem(Icons.timer, '타이머'),
  //   MenuItem(FontAwesomeIcons.stopwatch, '스톱워치'),
  // ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        //on swiping left
        if (details.delta.dx < -6) {
          Provider.of<MenuController>(context, listen: true).toggle();
        }
      },
      child: Container(
        padding: EdgeInsets.only(
            top: 62,
            left: 32,
            bottom: 8,
            right: MediaQuery.of(context).size.width / 2.9),
        color: Color(0XFF3F51b5),
        child: Column(
          children: <Widget>[
            Spacer(
              flex: 2,
            ),
            Expanded(
              flex: 7,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(children: <Widget>[
                    ListTile(
                      title: new Text(
                        " 시계",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      leading: new Icon(
                        FontAwesomeIcons.clock,
                        color: Colors.white,
                        size: 20,
                      ),
                      onTap: () => {
                        Navigator.of(context).pushReplacement(
                          new MaterialPageRoute(
                            builder: (BuildContext context) => new Clock(),
                          ),
                        ),
                      },
                    ),
                    ListTile(
                      title: new Text(
                        " 알람",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      leading: new Icon(
                        Icons.alarm,
                        color: Colors.white,
                        size: 20,
                      ),
                      onTap: () => {
                        Navigator.of(context).pushReplacement(
                          new MaterialPageRoute(
                            builder: (BuildContext context) => new Alarm(),
                          ),
                        ),
                      },
                    ),
                    ListTile(
                      title: new Text(
                        " 타이머",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      leading: new Icon(
                        Icons.timer,
                        color: Colors.white,
                        size: 20,
                      ),
                      onTap: () {
                        // Navigator.of(context).pop();
                        // Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new Demo1()));
                      },
                    ),
                    ListTile(
                      title: new Text(
                        " 스톱워치",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      leading: new Icon(
                        FontAwesomeIcons.stopwatch,
                        color: Colors.white,
                        size: 20,
                      ),
                      onTap: () {
                        // Navigator.of(context).pop();
                        // Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new Demo1()));
                      },
                    ),
                  ]),
                ),
              ),
            ),
            Spacer(
              flex: 2,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.info,
                color: Colors.white,
                size: 20,
              ),
              title: Text('정보',
                  style: TextStyle(fontSize: 14, color: Colors.white)),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                FontAwesomeIcons.github,
                color: Colors.white,
                size: 20,
              ),
              title: Text('GitHub',
                  style: TextStyle(fontSize: 14, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuItem {
  String title;
  IconData icon;

  MenuItem(this.icon, this.title);
}
