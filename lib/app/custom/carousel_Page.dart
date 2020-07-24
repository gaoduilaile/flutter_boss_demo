import 'package:flutter/material.dart';
import 'package:flutterbossdemo/app/custom/banner_model.dart';
import 'package:flutterbossdemo/app/custom/carousel_widget.dart';

class CarouselPage extends StatefulWidget {
  @override
  _CarouselPageState createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  var model = BannerModel(
      "https://bkimg.cdn.bcebos.com/pic/eaf81a4c510fd9f94448d0a52e2dd42a2934a49b",
      image: 'assets/lye/LYE1.jpg');
  var model1 = BannerModel(
      "https://baike.baidu.com/tashuo/browse/content?id=3bad0e02c4f9694dcbee9035&lemmaId=15897571&fromLemmaModule=pcRight",
      image: 'assets/lye/LYE2.jpg');
  var model2 = BannerModel(
      "https://baike.baidu.com/tashuo/browse/content?id=8ebf3bd38d0b879085e0da36&lemmaId=15897571&fromLemmaModule=pcRight",
      image: 'assets/lye/LYE3.jpg');

  List<BannerModel> banners = List();

  void initState() {
    super.initState();
    banners..add(model)..add(model1)..add(model2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('轮播图'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Container(
              width: double.maxFinite,
              height: 300,
              child: Carousel(
                banners: banners,
                onTap: (model) {
                  print(model.image);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
