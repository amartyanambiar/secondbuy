import 'package:flutter/material.dart';

class BarData {
  BarData({
    // ignore: non_constant_identifier_names
    this.imgPath = '',
    this.index = 0,
    this.tapPath = '',
    this.isSelected = false,
  });

  String imgPath;
  String tapPath;
  bool isSelected;
  int index;

  // ignore: non_constant_identifier_names
  static List<BarData> BarList = <BarData>[
    BarData(
      imgPath: 'assets/icon/home.svg',
      tapPath: 'assets/icon/home-tap.svg',
      index: 0,
      isSelected: true,
    ),
  ];
}
