import 'package:flutter/material.dart';

import './models/server.dart';
import './screens/server_settings_screen.dart';
import './widgets/server_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Server App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
            .copyWith(secondary: Colors.amber),
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
              fontWeight: FontWeight.normal,
              fontSize: 20,
            ),
            bodyText2: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            headline5: const TextStyle(
              color: Colors.purple,
              fontWeight: FontWeight.normal,
              fontSize: 12,
            ),
            headline6: const TextStyle(
              fontWeight: FontWeight.bold,
            )),
      ),
      // home: MyHomePage(title: 'Server App'),
      home: ServerSettingsScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  List<Server> dummyData = [
    Server(
        id: "1",
        name: "Server1",
        url: "some.url.com",
        subtitle: "some subtitle"),
    Server(
        id: "2",
        name: "Server2",
        url: "another.url.com",
        pollTime: 1200,
        channel: "another channel",
        icon: const Icon(Icons.place_rounded)),
  ];

  MyHomePage({Key? key, required this.title}) : super(key: key);

  void showServerDetails() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          //TODO: add events button
        ),
        body: Column(
          children: [
            Container(
              height: 200,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ServerItem(showServerDetails);
                },
                itemCount: 2,
              ),
            ),
            Center(
              child: TextButton(
                  onPressed: () => print('text button'),
                  child: Text(
                    'add server',
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                  )),
            )
          ],
        ));
  }
}
