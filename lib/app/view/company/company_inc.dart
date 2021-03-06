import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CompanyInc extends StatelessWidget {
  final String companyInc;

  CompanyInc(this.companyInc);

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(10),
      child: new Container(
        color: Colors.white,
        child: new Padding(
          padding: const EdgeInsets.all(15.0),
          child: new Column(
            children: <Widget>[
              new Row(
                children: <Widget>[
                  new Container(
                    margin: EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: new Text(
                      "公司介绍",
                      style: new TextStyle(fontSize: 15),
                    ),
                  )
                ],
              ),
              new RichText(
                text: new TextSpan(
                  text: companyInc,
                  style: new TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
