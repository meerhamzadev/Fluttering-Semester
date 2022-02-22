import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'FPage'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<Tab> $myTabs = <Tab>[
      Tab(text: 'LEFT'),
      Tab(text: 'RIGHT'),
    ];
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                color: Colors.lightGreen,
                child: ListTile(
                    leading: Icon(
                      Icons.account_circle_rounded,
                      color: Colors.white,
                      size: 50.3,
                    ),
                    title: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'List view of flutter',
                            style: TextStyle(color: Colors.white),
                          ),
                        ]),
                    trailing: Icon(
                      Icons.article_rounded,
                      color: Colors.white,
                      size: 50.3,
                    ))),

            // *Container(
            // *   child: const Image(
            // *  image: NetworkImage(
            // *      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            // *)),

            Padding(
                padding: EdgeInsets.all(5.0),
                child: Column(children: [
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.done),
                      title: Text('This is a card'),
                      trailing: Icon(
                        Icons.cancel,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.amber[100],
                    child: ListTile(
                      leading: Icon(
                        Icons.done,
                        color: Colors.black87,
                      ),
                      title: Text('This is 2nd card'),
                      trailing: Icon(
                        Icons.cancel,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ])),

            TextButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('AlertDialog Title'),
                  content: const Text('AlertDialog description'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              ),
              child: const Text('Show Dialog'),
            ),

            // DefaultTabController(
            //     length: $myTabs.length,
            //     child: Scaffold(
            //       appBar: AppBar(
            //         bottom: TabBar(
            //           tabs: $myTabs,
            //         ),
            //       ),
            //       body: TabBarView(
            //         children: $myTabs.map((Tab tab) {
            //           final String label = "hello world";
            //           return Center(
            //             child: Text(
            //               'This is the $label tab',
            //               style: const TextStyle(fontSize: 36),
            //             ),
            //           );
            //         }).toList(),
            //       ),
            //     ))
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: const Text('Hello there 👋'),
                    action: SnackBarAction(
                      label: 'Close',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  );

                  // Find the ScaffoldMessenger in the widget tree
                  // and use it to show a SnackBar.
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: const Text('Show SnackBar'),
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
    );
  }
}
