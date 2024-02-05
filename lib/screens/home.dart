// TODO Implement this library.

import 'package:flutter/material.dart';
import 'package:todoapp/constants/colors.dart';


class Home extends StatelessWidget {
  // const Home({key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tdBGColor,
        title: Row(
          children: [
            Icon(icons.menu,
              color: tdBlack,
              size: 30,)
          ],
        ),
      ),
      body: Container(
        child: Text("home"),
      ),
    );
  }
}