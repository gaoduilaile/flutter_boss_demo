import 'package:flutter/material.dart';
import 'app/component/icon_tab.dart';
import 'package:flutterbossdemo/app/view/company_view.dart';
import 'package:flutterbossdemo/app/view/messages_view.dart';
import 'package:flutterbossdemo/app/view/mine_view.dart';
import 'app/view/jobs_view.dart';

class BossApp extends StatefulWidget {
  @override
  HomeState createState() {
    return HomeState();
  }
}

const int CURRENTINDEX_JOB = 0;
const int CURRENTINDEX_COMPANY = 1;
const int CURRENTINDEX_MESSAGE = 2;
const int CURRENTINDEX_MINE = 3;
const Color primaryColor = Color.fromARGB(255, 0, 215, 198);

const double _kTabTextSize = 10;

class HomeState extends State<BossApp> with SingleTickerProviderStateMixin {
  int currentIndex = 0;
  TabController tabController;

  VoidCallback voidCallback;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController =
        new TabController(initialIndex: currentIndex, length: 4, vsync: this);
//    tabController.addListener(() {
//      currentIndex = this.tabController.index;
//    });

    voidCallback = () {
      setState(() {
        currentIndex = this.tabController.index;
      });
    };
    tabController.addListener(voidCallback);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new TabBarView(
        children: <Widget>[
          new JobTab(),
          new CompanyTab(),
          new MessageTab(),
          new MineTab()
        ],
        controller: tabController,
      ),
      bottomNavigationBar: new Material(
        color: Colors.white,
        child: new TabBar(
            controller: tabController,
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: new TextStyle(fontSize: _kTabTextSize),
            tabs: <IconTab>[
              new IconTab(
                  text: "求职",
                  icon: currentIndex == CURRENTINDEX_JOB
                      ? "assets/images/tab1_press.png"
                      : "assets/images/tab1.png",
                  color: currentIndex == CURRENTINDEX_JOB
                      ? primaryColor
                      : Colors.grey[900]),
              new IconTab(
                  text: "公司",
                  icon: currentIndex == CURRENTINDEX_COMPANY
                      ? "assets/images/tab2_press.png"
                      : "assets/images/tab2.png",
                  color: currentIndex == CURRENTINDEX_COMPANY
                      ? primaryColor
                      : Colors.grey[900]),
              new IconTab(
                  text: "消息",
                  icon: currentIndex == CURRENTINDEX_MESSAGE
                      ? "assets/images/tab3_press.png"
                      : "assets/images/tab3.png",
                  color: currentIndex == CURRENTINDEX_MESSAGE
                      ? primaryColor
                      : Colors.grey[900]),
              new IconTab(
                  text: "我的",
                  icon: currentIndex == CURRENTINDEX_MINE
                      ? "assets/images/tab4_press.png"
                      : "assets/images/tab4.png",
                  color: currentIndex == CURRENTINDEX_MINE
                      ? primaryColor
                      : Colors.grey[900]),
            ]),
      ),
    );
  }
}
