import 'package:bank_kimia_x/screen/my_profile.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

Widget appBar(String kategori, BuildContext context) {
  void choiceAction(String choice) {
    if (choice == Constants.FirstItem) {
      print('I First Item');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyProfileScreen()));
    }
  }

  return AppBar(
    backgroundColor: baseColor,
    title: Text(
      kategori,
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    ),
    actions: <Widget>[
      PopupMenuButton<String>(
        onSelected: choiceAction,
        itemBuilder: (BuildContext context) {
          return Constants.choices.map((String choice) {
            return PopupMenuItem<String>(
              value: choice,
              child: Text(
                choice,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            );
          }).toList();
        },
      )
    ],
  );
}

class Constants {
  static const String FirstItem = 'My Profile';

  static const List<String> choices = <String>[
    FirstItem,
  ];
}
