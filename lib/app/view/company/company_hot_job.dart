import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterbossdemo/app/view/company/company_inc.dart';

class CompanyHotJob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(10),
      child: new Row(
        children: <Widget>[
          new RichText(
              text: new TextSpan(
            text: "尽情期待",
            style: new TextStyle(fontSize: 16, color: Colors.black),
          ))
        ],
      ),
    );
  }
}
