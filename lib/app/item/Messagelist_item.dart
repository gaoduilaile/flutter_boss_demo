import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterbossdemo/app/model/job.dart';
import 'package:flutterbossdemo/app/model/message.dart';

class MessageListItem extends StatelessWidget {
  final Message message;

  MessageListItem(this.message);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: new Card(
        elevation: 0.0,
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.only(
                left: 15,
                top: 15,
                bottom: 15,
                right: 15,
              ),
              child: Image.asset(
                message.avatar,
                width: 50,
                height: 50,
              ),
            ),
            Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new Padding(
                    padding: EdgeInsets.only(
                      left: 5,
                      top: 5,
                      bottom: 5,
                      right: 5,
                    ),
                    child: Text(
                      message.name,
                      style: new TextStyle(color: Colors.black),
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(
                      left: 5,
                      top: 5,
                      bottom: 5,
                      right: 5,
                    ),
                    child: Text(
                      message.company,
                      style: new TextStyle(color: Colors.grey),
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.only(
                      left: 5,
                      top: 5,
                      bottom: 5,
                      right: 5,
                    ),
                    child: Text(
                      message.msg,
                      style: new TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
