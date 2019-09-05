import 'package:flutter/material.dart';

class TopCategories {
  String category;
  int courseNo;
  Color color;

  TopCategories({
    this.category,
    this.courseNo,
    this.color
  });
}

List<TopCategories> catData = [
  TopCategories(
    category: 'Marketing',
    courseNo: 120,
    color: Colors.brown
  ),
  TopCategories(
    category: 'Development',
    courseNo: 156,
    color: Colors.pink
  ),
  TopCategories(
    category: 'Photography',
    courseNo: 100,
    color: Colors.red
  ),
  TopCategories(
    category: 'Mobile',
    courseNo: 360,
    color: Colors.green
  ),
  TopCategories(
    category: 'UI/UX',
    courseNo: 500,
    color: Colors.lime
  )
];