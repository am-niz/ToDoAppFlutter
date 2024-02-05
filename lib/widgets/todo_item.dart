import 'package:flutter/material.dart';
import 'package:todoapp/constants/colors.dart';

class ToDoItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          print("clicked");
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.all(6),
        tileColor: Colors.white,
        leading: Icon(
          Icons.check_box,
          color: tdBlue,
        ),
        title: Text("Check mail",
            style: TextStyle(
              fontSize: 16,
              color: tdBlack,
              decoration: TextDecoration.lineThrough,
            )),
        trailing: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {
              print("clicked");
            },
          ),
        ),
      ),
    );
  }
}
