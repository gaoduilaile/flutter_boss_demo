import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MineTab extends StatelessWidget {
  final double appBarHeight = 150;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: new Color.fromARGB(255, 242, 242, 245),
      body: CustomScrollView(
        slivers: <Widget>[
          new SliverAppBar(
            expandedHeight: appBarHeight,
            flexibleSpace: new FlexibleSpaceBar(
              background: new Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  new DecoratedBox(
                    decoration: new BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.0, -1.0),
                        end: Alignment(0.0, -0.4),
                        colors: const <Color>[
                          const Color(0x000000),
                          const Color(0x000000)
                        ],
                      ),
                    ),
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Padding(
                        padding: EdgeInsets.only(
                          top: 20,
                          left: 30,
                          right: 20,
                        ),
                        child: new CircleAvatar(
                          radius: 35,
                          backgroundImage: new NetworkImage(
                              "http://www.baidu.com/link?url=2mdT2gdtc7z7EGmiY4NQIxt8F0HVf7xqQz3lF6vpxzyoiYvVrMzvSw9-8FLAtn0DSZcPmEx26z89GmvB6Z9N1NfvvL0GgRCo1CxJtviYq-V_cQadnKl68tvXShwWMstD99ibRYEnujEmpBa9jyuoofpZqD3HUwefHOgV_fb8sLCOegXdMzj54kEabqHxdISPKfAr01qSoEb-o97BYhWKZXDGv8PbN6HoyaF03jE9LUlOSet0XM8FYbLcFePh2O61PUXIJTFdHbA_8V--P9QGKhwUSNDKy2u12Ot8Auyo1I189BKyzntKuHGa7KxOOBOlxpicNS5qKA7O4CtZ8cZCqljgvwFFsqhXZUSEHrfF-a30uJZGPbQrye-jC9uZwRPtoY6QWV6S1jPqAqJJrc9p4qtraFViKYcwgvtOk5ZoybIUmCzEfvpfOACYKwUchsB0o78plnqix4BPcSJZMJvktK9yItyGxTu4hN6SnHEUQppO1J5qdAmbWsxosPKEV_JfUr1bpV71UqQH4weFglU_z2K-e9C-8QhjHfw401-bTGFidH0tWNvLSJTvKhEMJtPekOMV_9cZF97y6vWJGB6SZo7ZJXLx3zIRItl994Fdqx6kPIfARwGMOz1vQ3a2Sodq5CWl88soYZOWy9KFRZeif_&timg=https%3A%2F%2Fss0.bdstatic.com%2F94oJfD_bAAcT8t7mm9GUKT-xh_%2Ftimg%3Fimage%26quality%3D100%26size%3Db4000_4000%26sec%3D1595495931%26di%3Da996d71a6422dfffe7dec736be113c66%26src%3Dhttp%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201809%2F02%2F20180902115208_hssyc.thumb.700_0.jpg&click_t=1595495955808&s_info=1903_910&wd=&eqid=b94320b9003582d0000000045f1955fb"),
                        ),
                      ),
                      new Row(
                        children: <Widget>[
                          new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Padding(
                                padding: EdgeInsets.only(
                                  top: 20,
                                  left: 30,
                                  right: 20,
                                ),
                                child: new Text(
                                  "史迪仔",
                                  style: new TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ),
                              new Text(
                                "在职-考虑机会",
                                style: new TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          new SliverList(
            delegate: new SliverChildListDelegate([
              new Container(
                color: Colors.white,
                child: new Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      new ContactItem(
                        "591",
                        "沟通过1",
                        () {
                          showDialog(
                              context: context,
                              child: new AlertDialog(
                                content: new Text(
                                  "沟通过1",
                                  style: new TextStyle(fontSize: 20),
                                ),
                              ));
                        },
                      ),
                      new ContactItem(
                        "592",
                        "沟通过2",
                        () {
                          showDialog(
                              context: context,
                              child: new AlertDialog(
                                content: new Text(
                                  "沟通过2",
                                  style: new TextStyle(fontSize: 20),
                                ),
                              ));
                        },
                      ),
                      new ContactItem(
                        "592",
                        "沟通过2",
                        () {
                          showDialog(
                              context: context,
                              child: new AlertDialog(
                                content: new Text(
                                  "沟通过2",
                                  style: new TextStyle(fontSize: 20),
                                ),
                              ));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class ContactItem extends StatelessWidget {
  final String count;
  final String title;
  final VoidCallback voidCallback;

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: voidCallback,
      child: new Column(
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: new Text(
              count,
              style: new TextStyle(fontSize: 22),
            ),
          ),
          new Text(title),
        ],
      ),
    );
  }

  ContactItem(this.count, this.title, this.voidCallback);
}
