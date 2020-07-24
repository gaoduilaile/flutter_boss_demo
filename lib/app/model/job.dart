import 'dart:convert';
import 'package:meta/meta.dart';

class Job {
  final String name;
  final String cnname;
  final String size;
  final String salary;
  final String username;
  final String title;

  Job(
      {@required this.name,
      @required this.cnname,
      @required this.size,
      @required this.salary,
      @required this.username,
      @required this.title});


  Job.fromJson(Map<String, dynamic> json)
      : name = json["name"],
        cnname = json["cnname"],
        size = json["size"],
        salary = json["salary"],
        username = json["username"],
        title = json["title"];

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "cnname": cnname,
      "size": size,
      "salary": salary,
      "username": username,
      "title": title
    };
  }

  static List<Job> getJsonData(String response) {
    List responseJson = json.decode(response);

    List<Job> joblist = responseJson.map((m) => new Job.fromJson(m)).toList();
    return joblist;
  }

  @override
  String toString() {
    return 'Job{name: $name, cnname: $cnname, size: $size, salary: $salary, username: $username, title: $title}';
  }
}
