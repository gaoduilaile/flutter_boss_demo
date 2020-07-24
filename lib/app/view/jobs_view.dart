import 'package:flutter/material.dart';
import 'package:flutterbossdemo/app/item/joblist_item.dart';
import 'package:flutterbossdemo/app/model/job.dart';

class JobTab extends StatefulWidget {
  @override
  JonList createState() {
    return new JonList();
  }
}

class JonList extends State<JobTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 242, 245),
      appBar: new AppBar(
        elevation: 0.0,
        title: Text(
          "Android",
          style: new TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),

      //方法一
      body: new ListView.builder(
          itemBuilder: buildJobItem, itemCount: jobs.length),
      //方法二
      //      body: new ListView.builder(
      //        itemBuilder: (context, item) {
      //          return new Container(
      //            child: new Column(
      //              children: <Widget>[
      //                buildJobItem(context,item),
      //                new Divider()
      //              ],
      //            ),
      //          );
      //        },
      //        itemCount: jobs.length,
      //      ),
    );
  }

  List<Job> jobs = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getJobList();
  }

  Widget buildJobItem(BuildContext context, int index) {
    Job job = jobs[index];

    var jobItem = new InkWell(
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
      child: new JobListItem(job),
    );

    return jobItem;
  }

  void getJobList() {
    Job job1 = new Job(
        name: "架构师",
        cnname: "蚂蚁金服",
        size: "B轮",
        salary: "25k-45k",
        username: "claire",
        title: "HR");
    Job job2 = new Job(
        name: "资深Android架构师",
        cnname: "今日头条",
        size: "D轮",
        salary: "25k-40k",
        username: "Kim",
        title: "HRBP");

    jobs.add(job1);
    jobs.add(job2);
  }
}
