// TODO Implement this library.

import 'package:flutter/material.dart';
import 'package:todoapp/constants/colors.dart';

class Home extends StatelessWidget {
  // const Home({key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: buildAppBar(),
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(height: 20),
            buildSearchBox(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                    top: 50,
                    bottom: 20,
                    ),
                    child: Text("All ToDo's",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildSearchBox() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10),
            prefixIcon: Icon(
              Icons.search,
              color: tdBlack,
              size: 20,
            ),
            prefixIconConstraints: BoxConstraints(
              maxHeight: 20,
              minWidth: 25,
            ),
            border: InputBorder.none,
            hintText: "Search"),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: tdBGColor,
        elevation: 0,
        title: Container(
          padding: EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.menu,
                color: tdBlack,
                size: 30,
              ),
              Container(
                color: Colors.red,
                height: 40,
                width: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  // child: Image.asset('assets/images/avatar.jpeg'),
                ),
              )
            ],
          ),
        ));
  }
}
