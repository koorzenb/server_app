import 'package:flutter/material.dart';

import '../models/server.dart';

class ServerSettingsScreen extends StatelessWidget {
  List<Server> dummyData = [
    Server(id: "1", name: "Server1", url: "some.url.com"),
    Server(id: "2", name: "Server2", url: "another.url.com"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Server Settings'),
      ),
      body: Column(
        children: [Text("Name")],
      ),
    );
  }
}
