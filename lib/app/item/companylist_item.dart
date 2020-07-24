import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterbossdemo/app/model/company.dart';
import 'package:flutterbossdemo/app/model/job.dart';
import 'package:flutterbossdemo/app/model/message.dart';

class CompanyListItem extends StatelessWidget {
  final Company company;

  CompanyListItem(this.company);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(3.0),
      child: Card(
        child: Row(
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.only(
                left: 15,
                top: 15,
                bottom: 15,
                right: 15,
              ),
              child: Image.asset(
                company.logo,
                width: 50,
                height: 50,
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 5, left: 50),
                  child: Text(
                    company.name,
                    style: new TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
                new Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 5, left: 50),
                  child: Text(
                    company.location,
                    style: new TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
                new Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 5, left: 50),
                  child: Text(
                    company.type + "|" + company.size + "|" + company.employee,
                    style: new TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
                new Divider(),
                Row(
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.only(
                        right: 5,
                        left: 5,
                        top: 5,
                        bottom: 5,
                      ),
                      child: new Text(
                        "热招" + company.hot + " " + company.count + "个职位",
                        style: new TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ),
//                    new Expanded(
//                      child: new Column(
//                        crossAxisAlignment: CrossAxisAlignment.end,
//                        children: <Widget>[
//                          new Padding(
//                            padding: const EdgeInsets.only(
//                              top: 5,
//                              bottom: 5,
//                            ),
//                            child: const Icon(
//                              Icons.keyboard_arrow_right,
//                            ),
//                          )
//                        ],
//                      ),
//                    ),

                    const Icon(
                      Icons.keyboard_arrow_right,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
