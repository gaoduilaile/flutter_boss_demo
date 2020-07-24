import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterbossdemo/home.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  Timer timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timer = new Timer(const Duration(microseconds: 2000), () {
      //do something

      try {
        Navigator.of(context).pushAndRemoveUntil(
            new MaterialPageRoute(
                builder: (BuildContext context) => new BossApp()),
            (Route route) => route == null);
      } catch (e) {}
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Material(
      color: Color.fromARGB(255, 0, 215, 198),
      child: new Padding(
        padding: const EdgeInsets.only(top: 150),
        child: new Column(
          children: <Widget>[
            new Text(
              "BOSS直聘",
              style: new TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
