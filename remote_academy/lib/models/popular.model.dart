import 'package:flutter/material.dart';

class PopularCourse {
  int learners;
  String title;
  double amount;
  Color color;

  PopularCourse({this.learners, this.title, this.amount, this.color});
}

List<PopularCourse> courseData = [
  PopularCourse(
      learners: 200,
      title: 'Universal Principles of Design',
      amount: 190,
      color: Colors.red),
  PopularCourse(
      learners: 3000,
      title: 'Flutter, Road Map to Cross Platform Build',
      amount: 150,
      color: Colors.blue),
  PopularCourse(
      learners: 250,
      title: 'User Experience Design Fundamentals',
      amount: 109,
      color: Colors.orange),
  PopularCourse(
      learners: 1200, title: 'Web Design', amount: 105, color: Colors.indigo)
];
