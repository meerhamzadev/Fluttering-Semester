import 'class.dart';
import 'package:flutter/material.dart';

var student1 = student();

class classComponent extends StatelessWidget {
  const classComponent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.person,
          size: 70,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Name of Student: ",
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
            Text(
              student1.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Age of the Student: ",
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
            Text(
              student1.age.toString(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ],
    );
  }
}
