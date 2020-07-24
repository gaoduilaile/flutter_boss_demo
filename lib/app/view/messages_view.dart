import 'package:flutter/material.dart';
import 'package:flutterbossdemo/app/item/Messagelist_item.dart';
import 'package:flutterbossdemo/app/model/message.dart';

class MessageTab extends StatefulWidget {
  @override
  JonList createState() {
    return new JonList();
  }
}

class JonList extends State<MessageTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 242, 245),
      appBar: new AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          "消 息",
          style: new TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),

      //方法一
      body: new ListView.builder(
          itemBuilder: buildMessageItem, itemCount: messages.length),
    );
  }

  List<Message> messages = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getJobList();
  }

  Widget buildMessageItem(BuildContext context, int index) {
    Message message = messages[index];

    var messageItem = new InkWell(
      onTap: () {
        showDialog(
          context: context,
          child: new AlertDialog(
            content: new Text(
              "尽情期待",
              style: new TextStyle(fontSize: 20),
            ),
          ),
        );
      },
      child: MessageListItem(message),
    );

    return messageItem;
  }

  void getJobList() {
    Message message1 = new Message(
        name: "小可爱",
        avatar: "assets/images/avator.png",
        company: "百度",
        position: "30k",
        msg: "你好");
    Message message2 = new Message(
        name: "小萝莉",
        avatar: "assets/images/avator.png",
        company: "阿里巴巴",
        position: "30k",
        msg: "你好");

    messages.add(message1);
    messages.add(message2);
  }
}
