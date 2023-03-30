import 'package:flutter/material.dart';

class DashBoardCategoriesModel{
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashBoardCategoriesModel(this.title, this.heading,this.subHeading, this.onPress);

  static List<DashBoardCategoriesModel> list = [
    DashBoardCategoriesModel("JS", "JavaScript", "10 lessons", () { }),
    DashBoardCategoriesModel("F", "Flutter", "10 lessons", () { }),
    DashBoardCategoriesModel("H", "HTML", "10 lessons", () { }),
    DashBoardCategoriesModel("c", "CSS", "10 lessons", () { }),
  ];
}
