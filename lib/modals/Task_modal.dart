import 'package:flutter/material.dart';
import 'package:task_management/widgets/constant.dart';

class Task {
  IconData? icon;
  String? title;
  Color? bgcolor;
  Color? iconcolor;
  Color? btncolor;
  num? left;
  List<Map<String, dynamic>>? desc;
  num? done;
  bool isLast;

  Task(
      {this.icon,
      this.title,
      this.bgcolor,
      this.btncolor,
      this.iconcolor,
      this.left,
      this.desc,
      this.done,
      this.isLast = false});
  static List<Task> generateTasks() {
    return [
      Task(
        icon: Icons.person_rounded,
        title: 'Personal',
        bgcolor: kBlueLight,
        iconcolor: kBlueDark,
        btncolor: kBlue,
        left: 5,
        desc: [
          {
            'time': '9:00 AM',
            'title': 'Create a Video',
            'slot': '9:00 AM - 10:00 AM',
            'tlColor': kRedDark,
            'bgColor': kRedLight,
          },
          {
            'time': '10:00 AM',
            'title': 'Watching a Movie',
            'slot': '10:00 AM - 11:00 AM',
            'tlColor': kBlueDark,
            'bgColor': kBlueLight,
          },
          {
            'time': '11:00 AM',
            'title': '',
            'slot': '',
            'tlColor': kYellowDark,
            'bgColor': kYellowLight,
          },
          {
            'time': '12:00 PM',
            'title': 'Go to the Gym',
            'slot': '12:00 Pm - 1:00 PM',
            'tlColor': kRedDark,
            'bgColor': kRedLight,
          },
          {
            'time': '1:00 PM',
            'title': 'Call with client',
            'slot': '1:00 PM - 2:00 PM',
            'tlColor': Colors.grey.withOpacity(0.3),
            'bgColor': kYellowLight,
          }
        ],
        done: 3,
        isLast: false,
      ),
      Task(
        icon: Icons.work,
        title: 'Work',
        bgcolor: kYellowLight,
        iconcolor: kYellowDark,
        btncolor: kBlue,
        left: 5,
        done: 3,
        isLast: false,
      ),
      Task(
        icon: Icons.favorite_rounded,
        title: 'Health',
        bgcolor: kRedLight,
        iconcolor: kRedDark,
        btncolor: kBlue,
        left: 5,
        done: 3,
        isLast: false,
      ),
      Task(
        icon: Icons.person_rounded,
        title: 'Personal',
        bgcolor: kBlueLight,
        iconcolor: kBlueDark,
        btncolor: kBlue,
        left: 5,
        done: 3,
        isLast: true,
      ),
    ];
  }
}
