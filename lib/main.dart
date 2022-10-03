import 'package:flutter/material.dart';
import 'models/server.dart';
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
      ),
      home: MyHomePage(title: 'Server App'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  final List<Server> servers = [
    Server(id: '1', name: 'Server1', url: 'some.url.com'),
    Server(id: '2', name: 'Server2', url: 'some.url.com')
  ];

  MyHomePage({Key? key, required this.title}) : super(key: key);

  void showServerDetails() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
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
