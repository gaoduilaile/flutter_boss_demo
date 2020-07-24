import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterbossdemo/app/custom/carousel_Page.dart';
import 'package:flutterbossdemo/app/model/company.dart';
import 'package:flutterbossdemo/app/view/company/company_hot_job.dart';
import 'package:flutterbossdemo/app/view/company/company_inc.dart';
import 'package:flutterbossdemo/app/view/company/company_info.dart';

class CompanyTopPicture extends StatefulWidget {
  final Company company;

  CompanyTopPicture(this.company);

  @override
  State<StatefulWidget> createState() {
    return CompanyTopPictureState();
  }
}

final double kAppbarHeight = 20;

class CompanyTopPictureState extends State<CompanyTopPicture>
    with TickerProviderStateMixin {
  List<Widget> imagePages;
  List<String> urls = [
    "https://bkimg.cdn.bcebos.com/pic/eaf81a4c510fd9f94448d0a52e2dd42a2934a49b",
    "https://baike.baidu.com/tashuo/browse/content?id=3bad0e02c4f9694dcbee9035&lemmaId=15897571&fromLemmaModule=pcRight",
    "https://baike.baidu.com/tashuo/browse/content?id=8ebf3bd38d0b879085e0da36&lemmaId=15897571&fromLemmaModule=pcRight"
  ];

  List<Tab> tabs;
  int currentIndex = 0;
  Widget companyTabContent;
  VoidCallback voidCallback;
  TabController tabController;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: new Color.fromARGB(255, 242, 242, 245),
      body: new Stack(
        children: <Widget>[
          new SingleChildScrollView(
            child: new Column(
              children: <Widget>[
                new SizedBox.fromSize(
                  size: Size.fromHeight(kAppbarHeight),
                  child: CarouselPage(),
                ),
                new Container(
                  color: Colors.white,
                  child: new Column(
                    children: <Widget>[
                      new CompanyInfo(widget.company),
                      new Divider(),
                      new TabBar(
                        indicatorWeight: 3.0,
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelStyle: new TextStyle(fontSize: 16),
                        labelColor: Colors.black,
                        controller: tabController,
                        tabs: tabs,
                        indicatorColor: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                ),
                companyTabContent,
              ],
            ),
          ),
          new Positioned(
            top: 10,
            left: -10,
            child: new Container(
              padding: const EdgeInsets.all(15),
              child: new BackButtonIcon(),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    if (!urls.isEmpty) {
      imagePages = <Widget>[];
      urls.forEach((String url) {
        imagePages.add(new Container(
          color: Colors.black.withAlpha(900),
          child: new ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: new Image.network(
              url,
              fit: BoxFit.cover,
              height: kAppbarHeight,
            ),
          ),
        ));
      });
    }

    tabs = [new Tab(text: "公司概况"), new Tab(text: "公司职位")];

    companyTabContent = new CompanyInc(widget.company.inc);
    tabController = new TabController(length: tabs.length, vsync: this);
    voidCallback = () {
      setState(() {
        if (currentIndex == 0) {
          companyTabContent = new CompanyInc(widget.company.inc);
        } else {
          companyTabContent = new CompanyHotJob();
        }
        currentIndex = this.tabController.index;
      });
    };

    tabController.addListener(voidCallback);
  }

  @override
  void dispose() {
    tabController.removeListener(voidCallback);
    tabController.dispose();
    super.dispose();
  }
}
