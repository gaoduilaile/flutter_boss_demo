import 'package:flutter/material.dart';
import 'package:flutterbossdemo/app/item/companylist_item.dart';
import 'package:flutterbossdemo/app/model/company.dart';
import 'package:flutterbossdemo/app/view/company/company_image_pages.dart';

class CompanyTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CompanyTabSate();
  }
}

class CompanyTabSate extends State<CompanyTab> {
  List<Company> companys = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 242, 245),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "公司",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: new ListView.builder(
        itemBuilder: CompanyItemBuild,
        itemCount: companys.length,
      ),
    );
  }

  Widget CompanyItemBuild(BuildContext context, int index) {
    Company company = companys[index];
    var companyItem = new InkWell(
      onTap: () {
        navCompanyDetail(company, index);
      },
      child: new CompanyListItem(company),
    );

    return companyItem;
  }

  void getList() {
    Company company1 = new Company(
        "assets/images/avator.png",
        "杭州蚂蚁金服科技公司",
        "杭州市西湖区",
        "互联网",
        "B轮",
        "10000人以上",
        "资深开放产品技术工程师",
        "500",
        "蚂蚁金融服务集团（以下称“蚂蚁金服”）起步于2004年成立的支付宝。2013年3月，支付宝的母公司宣布将以其为主体筹建小微金融服务集团（以下称“小微金服”），小微金融（筹）成为蚂蚁金服的前身。2014年10月，蚂蚁金服正式成立。 [1]  蚂蚁金服以“让信用等于财富”为愿景，致力于打造开放的生态系统，通过“互联网推进器计划” [2]  助力金融机构和合作伙伴加速迈向“互联网+”，为小微企业和个人消费者提供普惠金融服务。依靠移动互联、大数据、云计算为基础，为中国践行普惠金融的重要实践。");

    Company company2 = new Company(
        "assets/images/avator.png",
        "杭州蚂蚁金服科技公司2",
        "杭州市西湖区2",
        "互联网2",
        "B轮2",
        "10000人以上2",
        "资深开放产品技术工程师2",
        "5002",
        "蚂蚁金融服务集团（以下称“蚂蚁金服”）起步于2004年成立的支付宝。2013年3月，支付宝的母公司宣布将以其为主体筹建小微金融服务集团（以下称“小微金服”），小微金融（筹）成为蚂蚁金服的前身。2014年10月，蚂蚁金服正式成立。 [1]  蚂蚁金服以“让信用等于财富”为愿景，致力于打造开放的生态系统，通过“互联网推进器计划” [2]  助力金融机构和合作伙伴加速迈向“互联网+”，为小微企业和个人消费者提供普惠金融服务。依靠移动互联、大数据、云计算为基础，为中国践行普惠金融的重要实践。");

    companys.add(company1);
    companys.add(company2);
  }

  navCompanyDetail(Company company, int index) {
    Navigator.of(context).push(new PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation<double> animation1,
          Animation<double> animation2) {
        //指定跳转的页面
        return new CompanyTopPicture(company);
      },
      transitionsBuilder: (BuildContext context, Animation<double> animation1,
          Animation<double> animation2, Widget child) {
        return new FadeTransition(
          opacity: animation1,
          child: new SlideTransition(
            position: new Tween(begin: const Offset(0.0, 1.0), end: Offset.zero)
                .animate(animation1),
            child: child,
          ),
        );
      },
    ));
  }
}
