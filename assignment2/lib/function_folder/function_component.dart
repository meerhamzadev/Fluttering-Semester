import 'package:flutter/material.dart';
import 'function.dart';

class FuntionCompnent extends StatefulWidget {
  FuntionCompnent({Key? key}) : super(key: key);

  @override
  State<FuntionCompnent> createState() => _FuntionCompnentState();
}

class _FuntionCompnentState extends State<FuntionCompnent> {
  @override
  String result = "0";

  methodRunner(String value) {
    setState(() {
      if (value == "add") {
        result = add(100, 50);
      } else if (value == "sub") {
        result = subtract(100, 50);
      } else if (value == "mul") {
        result = multiply(100, 50);
      } else if (value == 'div') {
        result = divide(100, 50);
      }
    });
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Value 1: 100",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Value 2: 50",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () => methodRunner("add"),
                child: Text("Add both values"))),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: () => methodRunner("sub"),
              child: Text("Subtract both values")),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: () => methodRunner("mul"),
              child: Text("Multiply both values")),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: () => methodRunner("div"),
              child: Text("Divide both values")),
        ),
        Text(
          result,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
