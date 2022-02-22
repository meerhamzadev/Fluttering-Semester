import 'package:flutter/material.dart';

class Loops extends StatefulWidget {
  Loops({Key? key}) : super(key: key);

  @override
  State<Loops> createState() => _LoopsState();
}

class _LoopsState extends State<Loops> {
  @override
  String shape = "";
  shapeGenerator() {
    for (var i = 1; i <= 4; i++) {
      for (var j = 0; j < i; j++) {
        setState(() {
          shape += " *";
        });
      }
      setState(() {
        shape += "\n";
      });
    }
    // setState(() {
    //   shape = "green";
    // });
  }

  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () => shapeGenerator(),
                child: Text("Generate Shape")),
            Text(
              shape,
              style: TextStyle(fontSize: 25),
            )
          ],
        ));
  }
}
