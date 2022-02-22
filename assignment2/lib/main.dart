import 'package:flutter/material.dart';
import 'class_folder/class_component.dart';
import 'function_folder/function_component.dart';
import 'loops/loops.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Text("Testing flutter"),
              bottom: TabBar(tabs: [
                Tab(
                  text: "Loops",
                ),
                Tab(
                  text: "Funtions",
                ),
                Tab(
                  text: "Classes",
                )
              ]),
            ),
            body: TabBarView(children: [
              Loops(),
              FuntionCompnent(),
              classComponent(),
            ])));
  }
}
