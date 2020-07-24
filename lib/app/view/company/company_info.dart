import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterbossdemo/app/model/company.dart';

class CompanyInfo extends StatelessWidget {
  final Company company;

  CompanyInfo(this.company);

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: EdgeInsets.all(10),
      child: new SizedBox(
        child: new Card(
          elevation: 0.0,
          child: new Row(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 15, right: 15, bottom: 0),
                child: Image.asset(
                  company.logo,
                  width: 50,
                  height: 50,
                ),
              ),
              new Expanded(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Container(
                      child: new Text(company.name,
                          textAlign: TextAlign.left,
                          style: new TextStyle(
                            fontSize: 15,
                          )),
                      margin: const EdgeInsets.only(
                        top: 15,
                        bottom: 15,
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(5),
                      child: new Text(
                        company.location,
                        style: new TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(10),
                      child: new Text(
                        company.type +
                            "|" +
                            company.size +
                            "|" +
                            company.employee,
                        style: new TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
