import 'dart:convert';
import 'package:meta/meta.dart';

class Message {
  final String name;
  final String avatar;
  final String company;
  final String position;
  final String msg;

  Message(
      {@required this.name,
      @required this.avatar,
      @required this.company,
      @required this.position,
      @required this.msg});

  Message.fromJson(Map<String, dynamic> json)
      : name = json["name"],
        avatar = json["avatar"],
        company = json["company"],
        position = json["position"],
        msg = json["msg"];

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "avatar": avatar,
      "company": company,
      "position": position,
      "msg": msg,
    };
  }

  static List<Message> getJsonData(String response) {
    List responseJson = json.decode(response);

    List<Message> joblist = responseJson.map((m) => new Message.fromJson(m)).toList();
    return joblist;
  }

  @override
  String toString() {
    return 'Message{name: $name, avatar: $avatar, company: $company, position: $position, msg: $msg}';
  }
}
